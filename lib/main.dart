//Daniel Pius
//Wednesday January 28th 2026
//Flutter Lab1

import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key})

  @override
  Widget build (BuildContext context) {
    return MaterialApp (

      //Top Bar Title
      title: 'Lab N1',
      //Debug banner hide
      debugShowCheckedModeBanner: false,

      //App Color Style theme
      theme :ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)
        ),      
      );
  }
}


