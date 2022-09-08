import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:invoice/app/modules/fitur/fitur.dart';
import 'package:invoice/app/modules/home/views/home_view.dart';
import 'package:invoice/app/routes/app_pages.dart';

import '../../../../theme.dart';
import '../controllers/main_page_controller.dart';

class MainPageView extends GetView<MainPageController> {
  const MainPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainPageController>(builder: (controller) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: primariC,
          onPressed: () {
            Get.toNamed(Routes.FAKTUR);
          },
          child: const Icon(IconlyBold.editSquare),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: IndexedStack(
          index: controller.tabIndex,
          children: [HomeView(), Fitur()],
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            selectedItemColor: primariC,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                    IconlyBold.home,
                  )),
              BottomNavigationBarItem(
                  label: 'Faktur',
                  icon: Icon(
                    IconlyBold.editSquare,
                  )),
            ]),
      );
    });
  }
}
