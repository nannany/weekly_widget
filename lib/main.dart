import 'package:flutter/material.dart';
import 'package:weekly_widget/widgets/expanded_list_page.dart';
import 'package:weekly_widget/widgets/expanded_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Weekly Widget',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Home Page'),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => new MyHomePage(),
          '/expanded': (BuildContext context) => new ExpandedPage(),
          '/expanded_list': (BuildContext context) => new ExpandedListPage()
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, '/expanded'),
              child: Text("Expanded"),
            ),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, '/expanded_list'),
              child: Text("ExpandedList"),
            ),
          ],
        ),
      ),
    );
  }
}
