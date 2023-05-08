import 'package:get/get.dart';
import '../module/view/binding/home_binding.dart';
import '../module/view/home_view.dart';
part 'app_routes.dart';


class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}