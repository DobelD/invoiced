import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:invoice/app/routes/app_pages.dart';
import '../../../../theme.dart';
import '../controllers/faktur_controller.dart';

class FakturView extends GetView<FakturController> {
  const FakturView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scafC,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primariC,
        title: Text(
          'INV001',
          style: title2Text,
        ),
        actions: [
          SizedBox(
            child: Row(
              children: [
                const SizedBox(
                  child: Icon(
                    IconlyBold.calendar,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 17),
                  child: SizedBox(
                    child: Center(
                      child: Text(
                        DateFormat.yMMMd().format(DateTime.now()),
                        style: lite2Text,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: SizedBox(
                child: TextField(
                  cursorColor: primariC,
                  style: hint2Text,
                  controller: controller.namaC,
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
                      hintText: 'Nama Client',
                      hintStyle: hintText,
                      prefixIcon: Icon(
                        IconlyBold.profile,
                        color: primariC,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: SizedBox(
                child: TextField(
                  cursorColor: primariC,
                  style: hint2Text,
                  controller: controller.alamatC,
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
                      prefixIcon: Icon(
                        IconlyBold.discovery,
                        color: primariC,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: SizedBox(
                child: TextField(
                  cursorColor: primariC,
                  style: hint2Text,
                  controller: controller.emailC,
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
                      prefixIcon: Icon(
                        IconlyBold.message,
                        color: primariC,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: SizedBox(
                child: TextField(
                  cursorColor: primariC,
                  style: hint2Text,
                  controller: controller.kontakC,
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
                      hintText: 'Kontak',
                      hintStyle: hintText,
                      prefixIcon: Icon(
                        IconlyBold.call,
                        color: primariC,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: SizedBox(
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
                      hintText: 'Pemesanan',
                      hintStyle: hintText,
                      prefixIcon: Icon(
                        IconlyBold.buy,
                        color: primariC,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: SizedBox(
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
                      hintText: 'Harga',
                      hintStyle: hintText,
                      prefixIcon: Icon(
                        IconlyBold.chart,
                        color: primariC,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: GestureDetector(
                onTap: () => Get.toNamed(Routes.SIGNATURE),
                child: Container(
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        IconlyBold.edit,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Tanda tangan',
                        style: hintText,
                      )
                    ],
                  )),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 55,
                child: Obx(
                  () => ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, primary: Colors.red.withOpacity(0)),
                      onPressed: () {
                        controller.isLoading.isFalse;
                        Get.back();
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: primariC,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: controller.isLoading.isFalse
                                ? Text('Simpan',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ))
                                : const CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: Colors.white,
                                  )),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
