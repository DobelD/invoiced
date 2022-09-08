import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:lottie/lottie.dart';
import '../../../../theme.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: scafC,
        body: Column(
          children: [
            SizedBox(
              height: 350,
              width: 350,
              child: Lottie.network(
                  'https://assets8.lottiefiles.com/packages/lf20_bo8vqwyw.json'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 10),
              child: SizedBox(
                child: TextField(
                  controller: controller.emailC,
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
                      contentPadding: const EdgeInsets.symmetric(vertical: 20),
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
              padding: const EdgeInsets.only(left: 17, right: 17, top: 10),
              child: SizedBox(
                  child: Obx(
                () => TextField(
                  obscureText: controller.isHidden.value,
                  controller: controller.passC,
                  cursorColor: primariC,
                  style: hint2Text,
                  autocorrect: false,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () => controller.isHidden.toggle(),
                          icon: controller.isHidden.isTrue
                              ? const Icon(Icons.remove_red_eye)
                              : const Icon(Icons.remove_red_eye_outlined)),
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
                      contentPadding: const EdgeInsets.symmetric(vertical: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: 'Password',
                      hintStyle: hintText,
                      prefixIcon: Icon(
                        IconlyBold.lock,
                        color: primariC,
                      )),
                ),
              )),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 55,
                child: Obx(
                  () => ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, primary: Colors.red.withOpacity(0)),
                      onPressed: () {
                        controller.signIn();
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: primariC,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: controller.isLoading.isFalse
                                ? Text('Masuk',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ))
                                : const CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: Colors.white,
                                  )),
                      )),
                )),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                    text: 'Belum punya akun ?',
                    style:
                        GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                    children: [
                      TextSpan(
                          text: '  Daftar',
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: primariC),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.offAndToNamed('/register');
                            })
                    ]),
              ),
            ),
          ],
        ));
  }
}
