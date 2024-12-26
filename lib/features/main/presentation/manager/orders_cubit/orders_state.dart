part of 'orders_cubit.dart';

@immutable
sealed class OrdersState {}

final class OrdersInitial extends OrdersState {}

final class OrdersLoading extends OrdersState {}

final class OrdersSuccess extends OrdersState {
  final List<OrderChartData> data;
  final int max;

  OrdersSuccess({
    required this.data,
    required this.max,
  });
}

final class OrdersFailure extends OrdersState {}
