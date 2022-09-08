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
  final controller = Get.put(HomeController());
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
            itemCount: controller.Inv.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              controller.Inv[index].inv.toString(),
                              style: subText,
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text(
                                    'Hapus',
                                    style: sub3Text,
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text(
                                    'Download',
                                    style: sub3Text,
                                  )),
                            ],
                          );
                        });
                  },
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0)),
                    child: ListTile(
                      title: Text(
                        controller.Inv[index].inv.toString(),
                        style: subText,
                      ),
                      subtitle: Text(
                        controller.Inv[index].namaApk.toString(),
                        style: liteText,
                      ),
                      trailing: Text(
                        controller.Inv[index].client.toString(),
                        style: liteText,
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
