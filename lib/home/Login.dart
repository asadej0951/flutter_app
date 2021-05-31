import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home/ButtonCode.dart';
import 'package:flutter_app/home/HeroApp.dart';
import 'package:flutter_app/image/ImageCode.dart';

import 'EditTextCode.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              Column(
                children: <Widget>[
                  SafeArea(
                      child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Text(
                            "ลงชื่อเข้าใช้",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        margin: EdgeInsets.only(top: 30),
                        child: FlatButton(
                          splashColor: Colors.blue,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          color: Colors.transparent,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 120),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      width: 120.0,
                      height: 120.0,
                      child: Center(
                        child:GestureDetector(
                          onTap: (){
                            Navigator.push(context, CupertinoPageRoute(builder: (context){
                              return HeroApp();
                            }));
                          },
                          child: Hero(
                            tag: "mytag",
                            child: Image.network(
                              "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png"
                            ),
                          ),
                        ) ,
                      ),
                    ),
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
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0))),
                  height: 500,
                  child: Container(
                    margin: EdgeInsets.only(right: 30, left: 30),
                    child: ListView(
                      children: <Widget>[
                        editTextMain("อีเมล", false),
                        editTextMain("รหัสผ่าน", true),
                        button(
                            "เข้าสู่ระบบ",
                            Colors.orange,
                            Color.fromRGBO(250, 179, 21, 1),
                            Colors.white,
                            30.0,
                            0,
                            24),
                        button("ลงชื่อเข้าใช้ด้วย facebook", Colors.blue,
                            Colors.white, Colors.black, 80.0, 0, 16.0),
                        button("ลงชื่อเข้าใช้ด้วย Google", Colors.blue,
                            Colors.white, Colors.black, 10.0, 0, 16.0),
                        button("ลงชื่อเข้าใช้ด้วย Apple", Colors.blue,
                            Colors.white, Colors.black, 10.0, 20.0, 16.0)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  Widget imageLogo() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageCode().showImageLogo(
              "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png")
        ],
      );

  Widget editTextMain(String message, bool status) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EditTextCode()
              .editTextMain(message, status, 10, 0, 300, TextInputType.text)
        ],
      );

  Widget button(String message, Color splashColor, Color colorButton,
          Color colorText, double top, double bottom, double fontSize) =>
      Container(
        child: ButtonCode().buttonMain(message, top, bottom , 50.0, 2.0,
            splashColor, colorButton, colorText, fontSize),
      );
}
