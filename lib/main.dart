import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app/routes/app_pages.dart';

void main() {
  Supabase.initialize(
      url: 'https://oorpykfkpabkzlxpxpzh.supabase.co',
      anonKey:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9vcnB5a2ZrcGFia3pseHB4cHpoIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjIxODc3NTMsImV4cCI6MTk3Nzc2Mzc1M30.RpxLFCM8OZewAmdAA8P-jw8vrtMyUgCUH8IaTxVZw0E");
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      getPages: AppPages.routes,
    ),
  );
}
