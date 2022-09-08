import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class FakturController extends GetxController {
  TextEditingController namaC = TextEditingController();
  TextEditingController alamatC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController kontakC = TextEditingController();

  RxBool isLoading = false.obs;
  DateTime dateTime = DateTime.now();

  SupabaseClient client = Supabase.instance.client;

  void input() async {
    await client.from("faktur").insert({
      "nama": namaC,
      "alamat": alamatC,
      "email": emailC,
      "kontak": kontakC,
    }).execute();
  }

  // ignore: unused_element
  _Date(BuildContext context) {
    // ignore: unused_element
    Future<DateTime?> pickDate() => showDatePicker(
          context: context,
          initialDate: dateTime,
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
        );
  }
}
