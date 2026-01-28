//Daniel Pius
//Wednesday January 28th 2026
//Flutter Lab1

import 'dart:async';
import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

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

        home: const MyHomePage(title: 'Lab N1'),
        );      
      
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage ({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//This Class is here to implement the timer and the counter for the timer 
class _MyHomePageState extends State<MyHomePage>{
  int _counter = 0;
  late Timer timer;

  void _timer() {
    Timer(const Duration(seconds: 5), handleTimeout);
  }

  void handleTimeout() {  
}
  
  void _incrementCounter() {
    setState(() {
      _counter ++;
    });
  }


  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.white,
        title: Text(widget.title),
      ),

      body : Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Time: '),

            Text('$_counter',
            style : Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),),
        
        floatingActionButton: Row(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: _timer,
            child: const Icon(Icons.play_circle_outline)),
          ],
        ),
    );
  }
}
