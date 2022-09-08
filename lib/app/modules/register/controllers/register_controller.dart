import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RegisterController extends GetxController {
  TextEditingController emailC =
      TextEditingController(text: 'ali.imronashter@gmail.com');
  TextEditingController passC = TextEditingController(text: '123456');
  TextEditingController namaC = TextEditingController(text: 'Ali Imron');
  RxBool isLoading = false.obs;
  RxBool isHidden = true.obs;

  SupabaseClient client = Supabase.instance.client;
  void signUp() async {
    if (namaC.text.isNotEmpty &&
        emailC.text.isNotEmpty &&
        passC.text.isNotEmpty) {
      isLoading.value = true;
      GotrueResponse res = await client.auth.signUp(emailC.text, passC.text);
      isLoading.value = false;

      if (res.error == null) {
        await client.from("users").insert({
          "email": emailC,
          "nama": namaC,
          "create_at": DateTime.now().toIso8601String(),
        }).execute();
      }
    } else {
      Get.snackbar("Terjadi kesalahan", "Email dan password belum diisi");
    }
  }
}
