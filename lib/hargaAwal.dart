import 'package:flutter/material.dart';

class HargaAwal extends StatelessWidget {
  const HargaAwal({
    Key key,
    @required this.hargaController, //parameter
  }) : super(key: key);

  final TextEditingController hargaController; //deklarasi Controller

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Harga Awal",
              style: TextStyle(fontFamily: "times new roman", fontSize: 16),
            ),
          ),
          Expanded(
            child: TextFormField(
              controller: hargaController,
              decoration: InputDecoration(hintText: "0"),
              textAlign: TextAlign.end,
              style: TextStyle(fontFamily: "times new roman", fontSize: 16),
              keyboardType: TextInputType.numberWithOptions(),
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Enter Number';
                }
                return null;
              },
            ),
          )
        ],
      ),
    );
  }
}
