import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/app_strings.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  final mocksData = mocks;

  @override
  Widget build(BuildContext context) {

  final widgets = mocks.map((sight) => SightCard(sight: sight)).toList();
  
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0),
        child: AppBar(
          toolbarHeight: 150,
          centerTitle: false,
          elevation: 0.0,
          backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
          title: const Text(AppStrings.listPlaces,
              style:
                  TextStyle(color: Color.fromRGBO(59, 62, 91, 1), fontSize: 32),),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: widgets,
          
        ),
      ),
    );
  }
}
