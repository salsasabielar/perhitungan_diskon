import 'dart:ui';

import 'package:flutter/material.dart';

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

  void _hitungDiskon() {
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
          margin: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text(
                      "Harga Awal",
                      style: TextStyle(
                          fontFamily: "times new roman", fontSize: 16),
                    ),
                    TextFormField(
                      controller: hargaController,
                      decoration: InputDecoration(hintText: "0"),
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontFamily: "times new roman", fontSize: 16),
                      keyboardType: TextInputType.numberWithOptions(),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Enter Number';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text(
                      "Diskon",
                      style: TextStyle(
                          fontFamily: "times new roman", fontSize: 16),
                    ),
                    TextFormField(
                      controller: diskonController,
                      decoration: InputDecoration(hintText: "0"),
                      textAlign: TextAlign.end,
                      keyboardType: TextInputType.numberWithOptions(),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Enter Number';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Harga Akhir",
                      style: TextStyle(
                          fontFamily: "times new roman", fontSize: 16),
                    ),
                    Text(
                      _hasil.toStringAsFixed(0),
                      style: TextStyle(
                          fontFamily: "times new roman", fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hemat " + _hemat.toStringAsFixed(0),
                      style: TextStyle(
                        fontFamily: "times new roman",
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    _hitungDiskon();
                  },
                  color: Colors.yellow,
                  textColor: Colors.black,
                  child: Text("Enter",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "times new roman",
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "History",
                  style: TextStyle(fontSize: 16, fontFamily: "times new roman"),
                ),
              ),
              Expanded(
                child: ListView(
                    children: listViewItem.map((String value) {
                  return Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        value,
                        style: TextStyle(
                            fontSize: 15, fontFamily: "times new roman"),
                      ));
                }).toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
