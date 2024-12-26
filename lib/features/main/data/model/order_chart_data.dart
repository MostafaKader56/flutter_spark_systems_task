class OrderChartData {
  final String month;
  final int all;
  final int orderedCount;
  final int deliveredCount;
  final int returnedCount;
  final int activeCount;
  int? monthIndex;

  OrderChartData({
    required this.month,
    required this.all,
    required this.orderedCount,
    required this.deliveredCount,
    required this.returnedCount,
    required this.activeCount,
  });
}
