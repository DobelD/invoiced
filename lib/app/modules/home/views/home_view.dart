import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:invoice/app/routes/app_pages.dart';

import '../../../../theme.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
