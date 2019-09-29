import 'package:flutter/material.dart';
import 'package:flutter_scrolling_lists_grids/widgets/custom_text.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText("SingleChildScrollView", color: Colors.white,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 100.00,
              color: Colors.red,
            ),
            Container(
              height: 100.00,
              color: Colors.blue,
            ),
            Container(
              height: 100.00,
              color: Colors.red,
            ),
            Container(
              height: 100.00,
              color: Colors.blue,
            ),
            Container(
              height: 100.00,
              color: Colors.red,
            ),
            Container(
              height: 100.00,
              color: Colors.blue,
            ),
            Container(
              height: 100.00,
              color: Colors.red,
            ),
            Container(
              height: 100.00,
              color: Colors.blue,
            ),
            Container(
              height: 100.00,
              color: Colors.red,
            ),
            Container(
              height: 100.00,
              color: Colors.blue,
            ),
            Container(
              height: 100.00,
              color: Colors.red,
            ),
            Container(
              height: 100.00,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
