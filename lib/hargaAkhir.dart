import 'package:flutter/material.dart';

class hargaAkhir extends StatelessWidget {
  const hargaAkhir({
    Key key,
    @required double hasil,
  })  : _hasil = hasil,
        super(key: key);

  final double _hasil; //deklarasi parameter yang terdapat di konstruktor

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 20, 8, 8), //mengatur jarak antar widget
      child: Row(
        mainAxisAlignment: MainAxisAlignment
            .spaceBetween, //mengatur posisi secara mendatar pada row
        children: [
          Expanded(
            child: Text(
              "Harga Akhir",
              style: TextStyle(fontFamily: "times new roman", fontSize: 16),
            ),
          ),
          Expanded(
            child: Text(
              _hasil.toStringAsFixed(
                  0), //menampilkan hasil dengan memanggil variabel
              textAlign: TextAlign.right,
              style: TextStyle(fontFamily: "times new roman", fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
