import 'package:flutter/material.dart';

class hemat extends StatelessWidget {
  const hemat({
    Key key,
    @required double hemat, //parameter
  })  : _hemat = hemat,
        super(key: key);

  final double _hemat; //deklaras variabel

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 30),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, //mengatur posisi secara mendatar pada row
        children: [
          Text(
            "Anda Hemat " + _hemat.toStringAsFixed(0),
            style: TextStyle(
              fontFamily: "times new roman",
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
