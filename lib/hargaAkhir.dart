import 'package:flutter/material.dart';

class hargaAkhir extends StatelessWidget {
  const hargaAkhir({
    Key key,
    @required double hasil,
  })  : _hasil = hasil,
        super(key: key);

  final double _hasil;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Harga Akhir",
            style: TextStyle(fontFamily: "times new roman", fontSize: 16),
          ),
          Text(
            _hasil.toStringAsFixed(0),
            style: TextStyle(fontFamily: "times new roman", fontSize: 16),
          ),
        ],
      ),
    );
  }
}
