import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spark_task/config.dart';
import '../../../data/model/order_chart_data.dart';

class OrdersLineChart extends StatelessWidget {
  final List<OrderChartData> data;
  final double maxValue;

  const OrdersLineChart({
    super.key,
    required this.data,
    required this.maxValue,
  });

  @override
  Widget build(BuildContext context) {
    final minimumWidth = data.length * 60.0;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
          top: 50,
        ),
        width: minimumWidth.clamp(
            MediaQuery.of(context).size.width, double.infinity),
        child: LineChart(
          LineChartData(
            gridData: const FlGridData(show: false),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, meta) {
                    if (value.toInt() >= 0 && value.toInt() < data.length) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          data[value.toInt()].month,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      );
                    }
                    return const Text('');
                  },
                  interval: 1,
                  reservedSize: 30,
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: maxValue / 5,
                  getTitlesWidget: (value, meta) {
                    return Text(
                      value.toInt().toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    );
                  },
                  reservedSize: 40,
                ),
              ),
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            borderData: FlBorderData(
              show: true,
              border: Border.all(color: Colors.white12),
            ),
            lineBarsData: [
              _createLineData(
                data.map((e) => e.orderedCount).toList(),
                Config.orderedOrdersLineColor,
              ),
              _createLineData(
                data.map((e) => e.deliveredCount).toList(),
                Config.deleiveredOrdersLineColor,
              ),
              _createLineData(
                data.map((e) => e.returnedCount).toList(),
                Config.returnedOrdersLineColor,
              ),
              _createLineData(
                data.map((e) => e.activeCount).toList(),
                Config.activeOrdersLineColor,
              ),
              _createLineData(
                data.map((e) => e.all).toList(),
                Config.allOrdersLineColor,
              ),
            ],
            minX: 0,
            maxX: (data.length - 1).toDouble(),
            minY: 0,
            maxY: maxValue,
            clipData: FlClipData.all(),
          ),
        ),
      ),
    );
  }

  LineChartBarData _createLineData(List<int> values, Color color) {
    return LineChartBarData(
      spots: List.generate(
        values.length,
        (index) => FlSpot(index.toDouble(), values[index].toDouble()),
      ),
      isCurved: true,
      color: color,
      barWidth: 3,
      isStrokeCapRound: true,
      dotData: const FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
    );
  }
}
