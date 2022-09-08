import 'package:get/get.dart';
import '../../../data/Invoice.dart';

class HomeController extends GetxController {
  List<ListInv> Inv = [
    ListInv(inv: "INV001", namaApk: "JUDI ONLINE", client: "RIZQI"),
    ListInv(inv: "INV002", namaApk: "JUDI GACOR", client: "RIZQI"),
    ListInv(inv: "INV003", namaApk: "JUDI HALAL", client: "RIZQI"),
    ListInv(inv: "INV004", namaApk: "JUDI HARAM", client: "RIZQI"),
    ListInv(inv: "INV005", namaApk: "JUDI CUAN ", client: "RIZQI"),
  ];
}
