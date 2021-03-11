import 'package:flutter/material.dart';

class inputDiskon extends StatelessWidget {
  const inputDiskon({
    Key key,
    @required this.diskonController,
  }) : super(key: key);

  final TextEditingController diskonController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Diskon",
              style: TextStyle(fontFamily: "times new roman", fontSize: 16),
            ),
          ),
          Expanded(
            child: TextFormField(
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
          )
        ],
      ),
    );
  }
}
