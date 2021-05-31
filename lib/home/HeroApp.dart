import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/ModelImage.dart';

class HeroApp extends StatefulWidget {
  @override
  _HeroApp createState() => _HeroApp();
}

class _HeroApp extends State<HeroApp> {
  List<ModelImage> _item = <ModelImage>[
    ModelImage("https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png",
        "flutter 1"),
    ModelImage("https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png",
        "flutter 2"),
    ModelImage("https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png",
        "flutter 3")
  ];
  String nameTag = "mytag";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Row(
          children: <Widget>[
            Container(
              width: 40.0,
              height: 40.0,
              child: Hero(
                tag: nameTag,
                child: Image.network(
                    "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png"),
                flightShuttleBuilder: (flightContext, animation, direction,
                    fromContext, toContext) {
                  Widget widget = toContext.widget;
                  return RotationTransition(child: widget, turns: animation);
                },
              ),
            ),
            Text("HeroApp"),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => itemView(_item[index]),
        itemCount: _item.length,
      ),
    );
  }

  Widget itemView(ModelImage model) => Container(
        height: 100,
        margin: EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
        decoration: BoxDecoration(
            color: Colors.greenAccent, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: GestureDetector(
            onTap: () {
              nameTag = model.name;
              print("nameTag =  $nameTag");
            },
            child: Align(
              alignment: Alignment.center,
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    width: 40.0,
                    height: 40.0,
                    child: Hero(
                      tag: model.name,
                      child: Image.network(model.image),
                      flightShuttleBuilder: (flightContext, animation,
                          direction, fromContext, toContext) {
                        Widget widget = toContext.widget;
                        return RotationTransition(
                            child: widget, turns: animation);
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text(
                        model.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
