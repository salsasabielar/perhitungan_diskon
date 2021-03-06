import 'package:flutter/material.dart';

class history extends StatelessWidget {
  const history({
    Key key,
    @required this.listViewItem, //parameter
  }) : super(key: key); //inisialisasi sebagai subclass main

  final List<String> listViewItem; //deklarasi variabel array

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
          children: listViewItem.map((String value) {
        //menampilkan hasil listViewItem
        return Container(
            margin: EdgeInsets.all(10),
            child: Text(
              value,
              style: TextStyle(
                fontSize: 15,
                fontFamily: "times new roman",
              ),
            ));
      }).toList()), //membuat list dari listViewItem yang berurutan
    );
  }
}
