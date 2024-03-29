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
  final mocksData = sights;

  @override
  Widget build(BuildContext context) {
    final widgets = sights.map((sight) => SightCard(sight: sight)).toList();

    return Scaffold(
      appBar: const _AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: widgets,
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(120.0),
      child: AppBar(
        toolbarHeight: 150,
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
        title: const Text(
          AppStrings.listPlaces,
          style: TextStyle(color: Color.fromRGBO(59, 62, 91, 1), fontSize: 32),
        ),
      ),
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
