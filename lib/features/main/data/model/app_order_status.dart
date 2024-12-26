class OrderStatus {
  final String value;

  const OrderStatus._(this.value);

  static const returned = OrderStatus._('RETURNED');
  static const ordered = OrderStatus._('ORDERED');
  static const delivered = OrderStatus._('DELIVERED');
  static const unknown = OrderStatus._('UNKNOWN');

  static const List<OrderStatus> values = [
    returned,
    ordered,
    delivered,
  ];

  factory OrderStatus.fromString(String value) {
    return values.firstWhere(
      (status) => status.value == value,
      orElse: () => OrderStatus.unknown,
    );
  }

  @override
  String toString() => value;
}
