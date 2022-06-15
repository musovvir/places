import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
    getContext() {
      print(context.runtimeType);
    }
  @override
  Widget build(BuildContext context) {
    getContext();

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First App',
      color: Colors.red,
      home: MyFirstWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({Key? key}) : super(key: key);

    // getContext() {
    //   print(context.runtimeType);
    // }

  @override
  Widget build(BuildContext context) {
    // getContext();

    return Container(
        child: const Center(
      child: Text('Hello!'),
    ));
  }
}
