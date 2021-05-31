import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home/Login.dart';
import 'package:flutter_app/home/WebViewApp.dart';
import 'package:flutter_app/image/ImageCode.dart';

import 'ButtonCode.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

typedef CallBack = void Function(Home item);

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v462-n-130-textureidea_1.jpg?w=1300&dpr=1&fit=default&crop=default&q=80&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=1ba69b5c4ae053e9c312677688c2c4a2"),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 150),
                    child: ListView(
                      children: <Widget>[
                        imageLogo(),
                        Center(
                          child: Text(
                            "App Test Flutter",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(64, 120, 154, 1),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  topLeft: Radius.circular(30))),
                          height: 400,
                          child: Container(
                            margin:
                                EdgeInsets.only(top: 10, right: 30, left: 30),
                            child: ListView(
                              children: <Widget>[
                                Text(
                                  "ยินดีต้อนรับ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Text(
                                    "ยินดีต้อนรับสมาชิก ทุกท่านเข้าสู่ App Test Flutter ขอให้ทุกท่านสนุกกับการเขียนแอพต่อไป",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 50.0),
                                  height: 50,
                                  child: RaisedButton(
                                    splashColor: Colors.blue,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    child: Text(
                                      "เข้าสู่ระบบ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          CupertinoPageRoute(
                                              builder: (context) {
                                        return Login();
                                      }));
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 50),
                                  height: 50,
                                  child: RaisedButton(
                                    splashColor: Colors.deepOrange,
                                    color: Colors.orange,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    child: Text(
                                      "ข้อมูลแอพพลิเคชั่น",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, CupertinoPageRoute(builder: (context){
                                        return WebViewApp();
                                      }));
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            )),
      ),
    );
  }

  Widget imageLogo() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageCode().showImageLogo(
              "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png")
        ],
      );

  Widget button(String message, Color splashColor, Color colorButton,
          Color colorText, double top, double bottom, double fontSize) =>
      Container(
        child: ButtonCode().buttonMain(message, top, bottom, 50.0, 2.0,
            splashColor, colorButton, colorText, fontSize),
      );
}
