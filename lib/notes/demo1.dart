import 'package:flutter/material.dart';

class Demo1 extends StatefulWidget {
  const Demo1({super.key});
  static String routePath = 'notes/demo1';

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title in app'),
      ),
      body: Center(
        child: Text('hello in demo1'),
      ),
    );
  }
}