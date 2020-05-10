import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WrapPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _WrapPageState();
}

class _WrapPageState extends State<StatefulWidget> {
  List<Chip> _chips = List<Chip>();
  String _text = "";
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            enabled: true,
            controller: _controller,
            onSubmitted: _onSubmit,
          ),
          Wrap(children: _chips)
        ],
      ),
    );
  }

  void _onSubmit(String value) {
    print(value);
    setState(() {
      _controller.text = "";
      _chips.add(Chip(
        label: Text(value),
      ));
    });
  }
}
