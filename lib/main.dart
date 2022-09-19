import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  final _imagePaths = [
    'assets/cap1.png',
    'assets/cap2.png',
    'assets/cap3.png',
    'assets/cap4.png',
    'assets/cap5.png',
    'assets/cap6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: CarouselSlider(options: CarouselOptions( autoPlay: true), items: _imagePaths.map((imagePath){
            return Builder(builder: (context){
              return Container(
                width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  child: Image.asset(imagePath));
              },
            );
          }).toList()),
        ),
      ),
    );
  }
}