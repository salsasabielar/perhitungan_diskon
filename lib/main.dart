import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
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
                      style: TextStyle(fontFamily: "times new roman"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "0"),
                      keyboardType: TextInputType.numberWithOptions(),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Enter some Text';
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
                      "Harga Awal",
                      style: TextStyle(fontFamily: "times new roman"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "0"),
                      keyboardType: TextInputType.numberWithOptions(),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Enter some Text';
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
                      "Harga Awal",
                      style: TextStyle(fontFamily: "times new roman"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "0"),
                      keyboardType: TextInputType.numberWithOptions(),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Enter some Text';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
