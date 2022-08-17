import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String tittle = 'My Favorite Fruit ';
  String fruit = 'Unknown';

  callback(varFruit) {
    setState(() {
      fruit = varFruit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(tittle + fruit),
        ),
        body: Center(
          child: Column(
            children: [
              Fruit("Orange",callback),
              Fruit("Apple",callback),
              Fruit("Banana",callback),
            ],
          ),
        ),
      ),
    );
  }
}

class Fruit extends StatelessWidget {
  final String name;
  final Function callback;

  Fruit(this.name,this.callback);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:(){
          callback(name);
        },
        child: Text(name));
  }
}
