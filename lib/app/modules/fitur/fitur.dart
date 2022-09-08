import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../theme.dart';

class Fitur extends StatefulWidget {
  const Fitur({Key? key}) : super(key: key);

  @override
  State<Fitur> createState() => _FiturState();
}

class _FiturState extends State<Fitur> {
  TextEditingController fiturC = TextEditingController();
  List<Map<String, dynamic>> fitur = [
    {
      'id': 'Multi Level User',
    },
    {'id': 'Pencarian Data'},
    {'id': 'Export Pdf atau Excel'},
    {'id': 'Import Kolektif'},
    {'id': 'Filter Data'},
    {'id': 'LogOut Timer'},
    {'id': 'Export Pdf atau Excel'},
    {'id': 'Import Kolektif'},
    {'id': 'Filter Data'},
  ];

  void addFitur() {}
  List seledtedData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scafC,
      appBar: AppBar(
        backgroundColor: primariC,
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                      );
                    });
              },
              icon: const Icon(IconlyBold.plus))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Container(
                height: heightDevice * 0.55,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: ListView.builder(
                    itemCount: fitur.length,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          isThreeLine: false,
                          dense: true,
                          activeColor: primariC,
                          title: Text(
                            fitur[index]['id'].toString(),
                            style: sub3Text,
                          ),
                          value: seledtedData.indexOf(fitur[index]) < 0
                              ? false
                              : true,
                          onChanged: (value) {
                            if (seledtedData.indexOf(fitur[index]) < 0) {
                              setState(() {
                                seledtedData.add(fitur[index]);
                              });
                            } else {
                              setState(() {
                                seledtedData.removeWhere(
                                    (element) => element == fitur[index]);
                              });
                            }
                            print(seledtedData);
                          });
                    })),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Container(
              child: Center(
                child: Text(
                  'Total Harga',
                  style: hintText,
                ),
              ),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
