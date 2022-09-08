import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:invoice/app/routes/app_pages.dart';

import '../../../../theme.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<ListInv> Inv = [
    ListInv(inv: "INV001", namaApk: "JUDI ONLINE", client: "RIZQI"),
    ListInv(inv: "INV002", namaApk: "JUDI GACOR", client: "RIZQI"),
    ListInv(inv: "INV003", namaApk: "JUDI HALAL", client: "RIZQI"),
    ListInv(inv: "INV004", namaApk: "JUDI HARAM", client: "RIZQI"),
    ListInv(inv: "INV005", namaApk: "JUDI CUAN ", client: "RIZQI"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: scafC,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: primariC,
          elevation: 1,
          title: Text(
            'Faktur',
            style: title2Text,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Get.toNamed(Routes.SETTING);
                },
                icon: const Icon(IconlyBold.setting))
          ],
        ),
        body: ListView.builder(
            itemCount: Inv.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0)),
                  child: ListTile(
                    title: Text(
                      Inv[index].inv.toString(),
                      style: subText,
                    ),
                    subtitle: Text(
                      Inv[index].namaApk.toString(),
                      style: liteText,
                    ),
                    trailing: Text(
                      Inv[index].client.toString(),
                      style: liteText,
                    ),
                  ),
                ),
              );
            }));
  }
}

class ListInv {
  String? inv;
  String? namaApk;
  String? client;
  ListInv({required this.inv, required this.namaApk, required this.client});
}
