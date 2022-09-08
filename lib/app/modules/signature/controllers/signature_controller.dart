import 'package:get/get.dart';
import 'dart:typed_data';

class SignatureController extends GetxController {
  ByteData? signature;

  void setSignature(ByteData val) async {
    signature = val;
    await Future.delayed(const Duration(milliseconds: 20), () {
      update();
    });
  }
}
