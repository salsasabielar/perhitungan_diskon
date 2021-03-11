import 'package:flutter/material.dart';

class HargaAwal extends StatelessWidget {
  const HargaAwal({
    Key key,
    @required this.hargaController,
  }) : super(key: key);

  final TextEditingController hargaController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Text(
            "Harga Awal",
            style: TextStyle(fontFamily: "times new roman", fontSize: 16),
          ),
          TextFormField(
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
        ],
      ),
    );
  }
}
