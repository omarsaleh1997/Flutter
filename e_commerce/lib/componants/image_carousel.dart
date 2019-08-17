import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';




Widget images_carousel = Container(
  height: 200,
  child: Carousel(
    boxFit: BoxFit.cover,
    images: [
      AssetImage('images/c1.jpg'),
      AssetImage('images/m1.jpeg'),
      AssetImage('images/w1.jpeg'),
      AssetImage('images/w3.jpeg'),
      AssetImage('images/w4.jpeg'),
    ],
    autoplay: false,
//      animationCurve: Curves.fastOutSlowIn,
//      autoplayDuration: Duration(milliseconds: 2000),
    dotSize: 4.0,
    dotColor: Colors.grey,
    indicatorBgPadding: 2.0,
  ),
);
