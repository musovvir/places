import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);
  
  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
        title: const Text('Список \nинтересных мест', style: 
          TextStyle(
            color: Color.fromRGBO(37, 40, 73, 1),
            fontSize: 32,
            fontFamily: 'Roboto', 
          ),
        ),
      ),
      body: const SizedBox(),
    );
  }
}
