import 'package:dartz/dartz.dart';
import '../../model/app_order.dart';

abstract class OrdersRepo {
  Future<Either<String, List<AppOrder>>> fetchOrders();
}
