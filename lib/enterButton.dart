import 'package:flutter/material.dart';

class enterButton extends StatelessWidget {
  const enterButton({
    Key key,
    @required this.hitungDiskon,
  }) : super(key: key);
  final Function hitungDiskon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //agar lebar button penuh
      height: 50,
      child: RaisedButton(
        //wiget ntuk membuat button
        onPressed: hitungDiskon, //agar button bisa diklik
        color: Colors.yellow,
        textColor: Colors.black,
        child: Text("Enter",
            style: TextStyle(
                fontSize: 16,
                fontFamily: "times new roman",
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
