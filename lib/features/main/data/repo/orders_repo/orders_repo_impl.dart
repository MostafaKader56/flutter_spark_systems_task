import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';

import '../../model/app_order.dart';
import 'orders_repo.dart';

class OrdersRepoImpl extends OrdersRepo {
  @override
  Future<Either<String, List<AppOrder>>> fetchOrders() async {
    try {
      final jsonString =
          await rootBundle.loadString('assets/jsons/orders.json');
      final jsonData = json.decode(jsonString);

      final orders = (jsonData['data']['orders'] as List)
          .map((item) => AppOrder.fromJson(item))
          .toList();

      return Right(orders);
    } catch (e) {
      return Left('Failed to load orders: $e');
    }
  }
}
