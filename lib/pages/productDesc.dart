import 'package:flutter/material.dart';

class ProductDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: const EdgeInsets.all(14.0),
        child: new Text(
          "A smart Personal assistant at your beck and call, who makes doing your everyday tasks"
              "easier - isn't that the dream? whether it it managing your calendar, playing music, or "
              "controlling your home entertainment, these can all be done by the Google Home - all you have to do is say "
              "\"Ok Google\" \n\n you can know the status of real-time information such as the current weather, important news,"
              "match dates and scores of your favourite sports team and much more by using your voice.",
          style: new TextStyle(
              fontFamily: "OpenSans",
              color: Colors.black,
              fontSize: 13.0,
              fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
