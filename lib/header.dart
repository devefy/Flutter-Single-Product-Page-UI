import 'package:flutter/material.dart';
import 'clipper.dart';
import 'gredients.dart';
import 'customIcon.dart';

var _appbar = new Align(
  heightFactor: 0.35,
  child: new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      new Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: new IconButton(
            icon: new Icon(
              CustomIcons.menu,
              color: Colors.black87,
            ),
            onPressed: () {
              print("menu Clicked");
            },
            splashColor: Colors.black,
          )),
      new Expanded(
        child: new Container(),
      ),
      new Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: new Icon(
          Icons.shopping_cart,
          color: Colors.black87,
        ),
      )
    ],
  ),
);

var content = new Container(
  margin: new EdgeInsets.only(top: 30.0),
  child: new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Image(
          width: 140.0,
          height: 140.0,
          image: new AssetImage("assets/googlehome.png"),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Container(
                width: 70.0,
                height: 30.0,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(30.0)),
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0))
                    ]),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    new Text("4.8")
                  ],
                ),
              ),
              new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text('Google Home',
                        style: new TextStyle(
                            fontSize: 20.0,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal)),
                    new Padding(
                      padding: const EdgeInsets.only(left: 28.0, top: 12.0),
                      child: new Text("Google LLC",
                          style: new TextStyle(
                            color: Colors.black87.withOpacity(.3),
                          )),
                    ),
                  ]),
              new Container(
                width: 60.0,
                height: 60.0,
                decoration: new BoxDecoration(
                    gradient: btnGradient,
                    shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                          blurRadius: 10.0,
                          color: Colors.black12,
                          offset: new Offset(0.0, 10.0))
                    ]),
                child: new Icon(
                  Icons.share,
                  size: 25.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ]),
);

class MHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 280.0,
      child: new Stack(
        children: <Widget>[
          new ClipPath(
            clipper: new ArcClipper(),
            child: new Container(
              height: double.INFINITY,
              decoration: new BoxDecoration(gradient: bgGradient),
            ),
          ),
          new Align(
            alignment: FractionalOffset.center,
            heightFactor: 3.5,
            child: content,
          ),
          _appbar
        ],
      ),
    );
  }
}
