import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';
import 'dart:ui' as ui;
import '../../../../theme.dart';
import '../controllers/signature_controller.dart';

class SignatureView extends GetView<SignatureController> {
  const SignatureView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    GlobalKey<SfSignaturePadState> _signaturePadKey = GlobalKey();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: primariC,
        title: Text(
          'Tanda Tangan',
          style: lite2Text,
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
            child: Center(
              child: Container(
                child: SfSignaturePad(
                  key: _signaturePadKey,
                  backgroundColor: Colors.white,
                ),
                height: 200,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: primariC),
                      child: SizedBox(
                          height: 50,
                          width: double.infinity,
                          child:
                              Center(child: Text("Simpan", style: sub2Text))),
                      onPressed: () async {
                        ui.Image image =
                            await _signaturePadKey.currentState!.toImage();
                        final pngBytes = await image.toByteData(
                            format: ui.ImageByteFormat.png);
                        controller.setSignature(pngBytes!);
                        Get.back();
                      }),
                ),
                SizedBox(width: 5),
                Expanded(
                  flex: 4,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red[700]),
                      child: SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: Center(
                              child: Text(
                            "Hapus",
                            style: sub2Text,
                          ))),
                      onPressed: () async {
                        _signaturePadKey.currentState!.clear();
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
