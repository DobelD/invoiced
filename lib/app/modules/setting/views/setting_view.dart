import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

import '../../../../theme.dart';
import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: primariC,
          automaticallyImplyLeading: false,
          title: Text(
            'Bisnis',
            style: lite2Text,
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  controller.logOut();
                },
                icon: const Icon(IconlyBold.logout))
          ],
        ),
        backgroundColor: scafC,
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Center(
                child: CircleAvatar(
                  radius: 60,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                cursorColor: primariC,
                style: hint2Text,
                autocorrect: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8)),
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  hintText: 'Nama Perusahaan',
                  hintStyle: hintText,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                cursorColor: primariC,
                style: hint2Text,
                autocorrect: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8)),
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  hintText: 'Email',
                  hintStyle: hintText,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                cursorColor: primariC,
                style: hint2Text,
                autocorrect: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8)),
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  hintText: 'Telp',
                  hintStyle: hintText,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                cursorColor: primariC,
                style: hint2Text,
                autocorrect: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8)),
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  hintText: 'Alamat',
                  hintStyle: hintText,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 55,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0, primary: Colors.red.withOpacity(0)),
                  onPressed: () {
                    controller.progressbar = true;
                    Get.back();
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: primariC,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: controller.progressbar
                          ? const CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            )
                          : Text('Simpan',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.white,
                              )),
                    ),
                  )),
            ),
          ],
        ));
  }
}
