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
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                children: [
                  TextSpan(text: 'С', style: TextStyle(color: Color.fromRGBO(76, 175, 80, 1))),
                  TextSpan(text: 'писок',),
                ],
                style: TextStyle(
                        color: Color.fromRGBO(37, 40, 73, 1),
                        fontSize: 32,
                        fontFamily: 'Roboto', 
                ),
              ),
              TextSpan(
                children: [
                  TextSpan(text: '\nи', style: TextStyle(color: Color.fromRGBO(252, 168, 10, 1))),
                  TextSpan(text: 'нтересных мест',),
                ],
                style: TextStyle(
                        color: Color.fromRGBO(37, 40, 73, 1),
                        fontSize: 32,
                        fontFamily: 'Roboto', 
                ),
              ),
            ],
          ),
        ),
      ),
      body: const SizedBox(),
    );
  }
}


// const Text('Список \nинтересных мест', style: 
//           TextStyle(
//             color: Color.fromRGBO(37, 40, 73, 1),
//             fontSize: 32,
//             fontFamily: 'Roboto', 
//           ),
//         ),