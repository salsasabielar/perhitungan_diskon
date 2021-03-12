import 'package:flutter/material.dart';

class inputDiskon extends StatelessWidget {
  const inputDiskon({
    //konstruktor
    Key key,
    @required this.diskonController, //parameter
    //@required this.hitungDiskon,
  }) : super(key: key); //inisialisasi sebagai subclass main

  final TextEditingController diskonController; //deklarasi controller
  //final Function hitungDiskon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Row(
        //menampung widget di dalam container
        //creates a horizontal array of children
        children: [
          Expanded(
            child: Text(
              "Diskon",
              style: TextStyle(fontFamily: "times new roman", fontSize: 16),
            ),
          ),
          Expanded(
            child: TextFormField(
              //untuk inputan
              controller: diskonController, //untuk menerima inputan user
              // onChanged: hitungDiskon,
              decoration: InputDecoration(hintText: "0"),
              textAlign: TextAlign.end,
              style: TextStyle(fontFamily: "times new roman", fontSize: 16),
              keyboardType: TextInputType
                  .numberWithOptions(), //agar keyboard hanya untuk angka
              validator: (String value) {
                //memvalidasi inputan user
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
