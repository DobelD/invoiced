import 'package:get/get.dart';

import '../controllers/faktur_controller.dart';

class FakturBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FakturController>(
      () => FakturController(),
    );
  }
}
