import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditTextCode {
  Container editTextMain(String message, bool status, double top, double bottom,
      double width, TextInputType inputType) {
    return Container(
      margin: EdgeInsets.only(top: top, bottom: bottom),
      width: width,
      child: TextField(
        obscureText: status,
        keyboardType: inputType,
        decoration: InputDecoration(
            hintText: message,
            labelStyle: TextStyle(color: Colors.black, fontSize: 18)),
      ),
    );
  }
}
