import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SettingController extends GetxController {
  SupabaseClient client = Supabase.instance.client;
  void logOut() async {
    client.auth.signOut();
    Get.offAndToNamed('login');
  }

  bool progressbar = false;
}
