import 'package:flutter/material.dart';

class history extends StatelessWidget {
  const history({
    Key key,
    @required this.listViewItem,
  }) : super(key: key);

  final List<String> listViewItem;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
          children: listViewItem.map((String value) {
        return Container(
            margin: EdgeInsets.all(10),
            child: Text(
              value,
              style: TextStyle(fontSize: 15, fontFamily: "times new roman"),
            ));
      }).toList()),
    );
  }
}
