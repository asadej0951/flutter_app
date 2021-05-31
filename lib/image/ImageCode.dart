import 'package:flutter/cupertino.dart';

class ImageCode {
  SizedBox mySizeBox() => SizedBox(width: 10.0, height: 20.0,);

  Container showImageLogo(String nameImage) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      width: 120.0,
      child: Image.network(nameImage),
    );
  }

  ImageCode();

}