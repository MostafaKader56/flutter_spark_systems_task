import 'package:flutter/material.dart';

import '../../../../../config.dart';
import '../../../../../generated/l10n.dart';
import 'chart_helper.dart';

class ChartHelpers extends StatelessWidget {
  const ChartHelpers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ChartHelper(
          color: Config.allOrdersLineColor,
          text: S.of(context).all_orders,
        ),
        ChartHelper(
          color: Config.activeOrdersLineColor,
          text: S.of(context).active_orders,
        ),
        ChartHelper(
          color: Config.deleiveredOrdersLineColor,
          text: S.of(context).delivered_orders,
        ),
        ChartHelper(
          color: Config.orderedOrdersLineColor,
          text: S.of(context).ordered_orders,
        ),
        ChartHelper(
          color: Config.returnedOrdersLineColor,
          text: S.of(context).returned_orders,
        ),
      ],
    );
  }
}
