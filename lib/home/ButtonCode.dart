import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonCode {
  Container buttonMain(String message, double top, double bottom, double height,
      double shadow, Color splashColor, Color colorButton, Color colorText,double fontSize ) {
    return Container(
      margin: EdgeInsets.only(top: top, bottom: bottom),
      height: height,
      child: RaisedButton(
          elevation: shadow,
          splashColor: splashColor,
          color: colorButton,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          child: Text(
            message,
            style: TextStyle(
                color: colorText, fontSize: fontSize, fontWeight: FontWeight.w400),
          ),
          onPressed: () {}),
    );
  }
}
