import 'app_order_status.dart';

class AppOrder {
  final String id;
  final bool isActive;
  final String price;
  final String company;
  final String buyer;
  final OrderStatus status;
  final DateTime registered;

  AppOrder({
    required this.id,
    required this.isActive,
    required this.price,
    required this.company,
    required this.buyer,
    required this.status,
    required this.registered,
  });

  factory AppOrder.fromJson(Map<String, dynamic> json) {
    return AppOrder(
      id: json['id'] as String,
      isActive: json['isActive'] as bool,
      price: json['price'] as String,
      company: json['company'] as String,
      buyer: json['buyer'] as String,
      status: OrderStatus.fromString(json['status'] as String),
      registered: DateTime.parse(json['registered'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'isActive': isActive,
      'price': price,
      'company': company,
      'buyer': buyer,
      'status': status.toString(),
      'registered': registered.toIso8601String(),
    };
  }
}
