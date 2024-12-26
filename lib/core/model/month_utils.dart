import '../../features/main/data/model/order_chart_data.dart';

class MonthOrderUtils {
  static int getMonthNumber(String month) {
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

  static List<OrderChartData> sortByMonth(List<OrderChartData> data) {
    return List<OrderChartData>.from(data)
      ..sort((a, b) {
        int aMonth = getMonthNumber(a.month);
        int bMonth = getMonthNumber(b.month);
        return aMonth.compareTo(bMonth);
      });
  }

  static String getMonthString(DateTime date) {
    final months = [
      'JAN',
      'FEB',
      'MAR',
      'APR',
      'MAY',
      'JUN',
      'JUL',
      'AUG',
      'SEP',
      'OCT',
      'NOV',
      'DEC'
    ];
    return months[date.month - 1];
  }
}
