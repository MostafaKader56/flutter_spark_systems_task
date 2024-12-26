import '../../features/main/data/repo/orders_repo/orders_repo.dart';
import '../../features/main/data/repo/orders_repo/orders_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencyInjection() {
  getIt.registerSingleton<OrdersRepo>(OrdersRepoImpl());
}
