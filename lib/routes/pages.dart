import 'package:get/get.dart';
import 'package:valorant_brasil/modules/home/home_page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
  ];
}
