import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 100,
                  color: Colors.blue,
                  child: Text("fix")
                ),
                Expanded(
                    child: Container(
                      color: Colors.orange,
                      child: Text("expanded"),
                    ))
              ],
            ),
            Expanded(
                child: Container(
                    color: Colors.grey
                )
            )
          ],
        ),
      ),
    );
  }
}
