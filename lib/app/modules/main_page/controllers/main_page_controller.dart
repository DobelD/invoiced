import 'package:get/get.dart';
import 'package:invoice/app/routes/app_pages.dart';

class MainPageController extends GetxController {
  List page = [Routes.HOME, Routes.FAKTUR, Routes.HITUNGBIAYA, Routes.SETTING];
  var tabIndex = 0;
  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
