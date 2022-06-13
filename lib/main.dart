import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyFirstWidget(),
    );
  }
}

class MyFirstWidget extends StatefulWidget {
  const MyFirstWidget({Key? key}) : super(key: key);

  @override
  State<MyFirstWidget> createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {

    setState(() {
      _count++;
    });
    
    print('Счетчик: $_count');

    return Container(
      child: const Center(
        child: Text('Hello!'),
      ),
    );
  }
}
