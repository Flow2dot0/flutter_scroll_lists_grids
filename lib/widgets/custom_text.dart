import 'package:flutter/material.dart';

class CustomText extends Text {

  CustomText(String text, {color: Colors.black, textAlign : TextAlign.center, bool bold, bool italic, double factor}):
      super(
        text,
        textAlign: textAlign,
        textScaleFactor: factor,
        style : TextStyle(
          color: color,
          fontWeight: (bold==true)? FontWeight.bold : FontWeight.normal,
          fontStyle: (italic==true)? FontStyle.italic : FontStyle.normal,
        )
      );
}