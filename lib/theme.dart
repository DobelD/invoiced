import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';

Color primariC = HexColor('00028C');
Color secondC = HexColor('0B8457');
Color accenC = HexColor('ECB365');
Color extraC = HexColor('064663');
Color scafC = HexColor('F6F6F6');

TextStyle headText = GoogleFonts.poppins(
    fontSize: 32, fontWeight: FontWeight.w600, color: primariC);
TextStyle titleText = GoogleFonts.poppins(
    fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black);
TextStyle subText = GoogleFonts.poppins(
    fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black);
TextStyle liteText = GoogleFonts.poppins(
    fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black);
TextStyle title2Text = GoogleFonts.poppins(
    fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white);
TextStyle sub2Text = GoogleFonts.poppins(
    fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white);
TextStyle sub3Text = GoogleFonts.poppins(
    fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black);
TextStyle hintText = GoogleFonts.poppins(
    fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black38);
TextStyle hint2Text = GoogleFonts.poppins(
    fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black);
TextStyle lite2Text = GoogleFonts.poppins(
    fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white);

double withhDevice = Get.width;
double heightDevice = Get.height;
