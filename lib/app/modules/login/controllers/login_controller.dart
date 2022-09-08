import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:invoice/app/routes/app_pages.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginController extends GetxController {
  TextEditingController emailC =
      TextEditingController(text: 'ali.imronashter@gmail.com');
  TextEditingController passC = TextEditingController(text: '123456');

  RxBool isLoading = false.obs;
  RxBool isHidden = true.obs;

  SupabaseClient client = Supabase.instance.client;

  void signIn() async {
    if (emailC.text.isNotEmpty && passC.text.isNotEmpty) {
      isLoading.value = true;
      GotrueResponse res =
          await client.auth.signIn(email: emailC.text, password: passC.text);
      isLoading.value = false;

      if (res.error == null) {
        Get.offAllNamed(Routes.MAIN_PAGE);
      } else {
        Get.snackbar("Terjadi kesalahan", res.error!.message);
      }
    } else {
      Get.snackbar("Terjadi kesalahan", "Email dan password belum diisi");
    }
  }
}
