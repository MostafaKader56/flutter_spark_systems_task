import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../../core/di/git_it.dart';
import '../../../data/model/app_order.dart';
import '../../../data/model/order_chart_data.dart';
import '../../../data/repo/orders_repo/orders_repo.dart';

part 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit() : super(OrdersInitial());

  final ordersRepo = getIt<OrdersRepo>();

  int _max = 0;

  Future<void> fetchOrders() async {
    emit(OrdersLoading());
    final result = await ordersRepo.fetchOrders();

    // This for simulate loading
    await Future.delayed(Duration(seconds: 2));

    result.fold(
      (l) {
        emit(OrdersFailure());
      },
      (r) {
        emit(OrdersSuccess(data: _prepareChartData(r), max: _max));
      },
    );
  }

  List<OrderChartData> _prepareChartData(List<AppOrder> orders) {
    final Map<String, Map<String, int>> groupedData = {};

    for (var order in orders) {
      final DateTime date = order.registered;
      final String month = DateFormat('MMM').format(date);

      groupedData.putIfAbsent(
        month,
        () => {
          'ORDERED': 0,
          'DELIVERED': 0,
          'RETURNED': 0,
          'ACTIVE': 0,
          'ALL': 0,
        },
      );

      groupedData[month]?['ALL'] = groupedData[month]!['ALL']! + 1;

      groupedData[month]?[order.status.toString()] =
          groupedData[month]![order.status.toString()]! + 1;

      if (order.isActive) {
        groupedData[month]?['ACTIVE'] = groupedData[month]!['ACTIVE']! + 1;
      }

      if ((groupedData[month]?['ALL'] ?? 0) > _max) {
        _max = groupedData[month]?['ALL'] ?? 0;
      }
    }

    List<OrderChartData> output = groupedData.entries.map((entry) {
      final month = entry.key;
      final counts = entry.value;
      return OrderChartData(
        month: month,
        orderedCount: counts['ORDERED'] ?? 0,
        deliveredCount: counts['DELIVERED'] ?? 0,
        returnedCount: counts['RETURNED'] ?? 0,
        activeCount: counts['ACTIVE'] ?? 0,
        all: counts['ALL'] ?? 0,
      );
    }).toList();

    return processMonthOrder(output);
  }

  static List<OrderChartData> processMonthOrder(List<OrderChartData> data) {
    for (var item in data) {
      item.monthIndex = _getMonthIndex(item.month);
    }

    data.sort((a, b) => (a.monthIndex ?? 0).compareTo(b.monthIndex ?? 0));

    return data;
  }

  static int _getMonthIndex(String month) {
    final months = {
      'JAN': 1,
      'FEB': 2,
      'MAR': 3,
      'APR': 4,
      'MAY': 5,
      'JUN': 6,
      'JUL': 7,
      'AUG': 8,
      'SEP': 9,
      'OCT': 10,
      'NOV': 11,
      'DEC': 12,
    };

    return months[month.toUpperCase()] ?? 0;
  }
}
