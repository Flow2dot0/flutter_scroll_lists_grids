import 'package:flutter/material.dart';
import 'package:flutter_scrolling_lists_grids/sections/list_view_and_list_tile_page.dart';
import 'sections/single_child_scroll_view_page.dart';
import 'widgets/custom_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Les Scrollables'),
    );
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
              RaisedButton(
                color: Colors.deepPurple,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SingleChildScrollViewPage()));
                  },
                child: CustomText("1. Le SingleChildScrollView", color: Colors.white, bold: true, factor: 1.00,)
              ),
            RaisedButton(
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewAndListTilePage()));
                },
                child: CustomText("2. La ListView et la ListTile", color: Colors.white, bold: true, factor: 1.00,)
            ),
           ]
        ),
      ),
    );
  }
}
