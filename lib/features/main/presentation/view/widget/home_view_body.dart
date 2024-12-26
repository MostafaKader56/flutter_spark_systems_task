import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spark_task/core/utils/functions.dart';
import 'package:flutter_spark_task/features/main/presentation/manager/orders_cubit/orders_cubit.dart';

import '../../../../../generated/l10n.dart';
import 'chart_helpers.dart';
import 'home_loading_state.dart';
import 'orders_bar_chart.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<OrdersCubit, OrdersState>(
        builder: (context, state) {
          if (state is OrdersLoading) {
            return HomeLoadingState();
          } else if (state is OrdersFailure) {
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).something_went_wrong),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<OrdersCubit>(context).fetchOrders();
                    },
                    child: Text(S.of(context).retry),
                  )
                ],
              ),
            );
          } else if (state is OrdersSuccess) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).home_title,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  S.of(context).home_subtitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  S.of(context).home_note,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                    child: OrdersLineChart(
                      data: state.data,
                      maxValue: state.max.toDouble() + 5,
                    ),
                  ),
                ),
                ChartHelpers(),
                const SizedBox(height: 10),
                Expanded(
                  child: Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Functions.changeLocale();
                        Functions.pushReplacement('/');
                      },
                      icon: const Icon(Icons.language),
                      label: Text(S.of(context).other_lang),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
