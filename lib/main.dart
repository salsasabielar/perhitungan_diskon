import 'dart:ui';

import 'package:flutter/material.dart';

import 'enterButton.dart';
import 'hargaAkhir.dart';
import 'hargaAwal.dart';
import 'hemat.dart';
import 'history.dart';
import 'inputDiskon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  double _inputHarga = 0;
  double _inputDiskon = 0;
  double _hasil = 0;
  double _hemat = 0;
  final hargaController = TextEditingController();
  final diskonController = TextEditingController();
  List<String> listViewItem = List<String>();

  _hitungDiskon() {
    setState(() {
      _inputHarga = double.parse(hargaController.text);
      _inputDiskon = double.parse(diskonController.text);
      _hasil = _inputHarga - (_inputHarga * (_inputDiskon / 100));
      _hemat = _inputHarga - _hasil;
    });
    listViewItem.add(
        _inputHarga.toStringAsFixed(0) + " to " + _hasil.toStringAsFixed(0));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DISKON',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "DISKON",
            style: TextStyle(
                fontFamily: "times new roman", fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            children: <Widget>[
              HargaAwal(hargaController: hargaController),
              inputDiskon(
                diskonController: diskonController,
                //hitungDiskon: _hitungDiskon,
              ),
              hargaAkhir(hasil: _hasil),
              hemat(hemat: _hemat),
              enterButton(
                hitungDiskon: _hitungDiskon,
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 10),
                child: Text(
                  "RIWAYAT",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "times new roman",
                      fontWeight: FontWeight.bold),
                ),
              ),
              history(listViewItem: listViewItem),
            ],
          ),
        ),
      ),
    );
  }
}
