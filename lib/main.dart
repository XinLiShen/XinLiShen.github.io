import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home/home.dart';
import 'dart:io';
import 'package:home/notes/demo1.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false, // 关闭 DEBUG 标志
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color.fromARGB(255, 246, 246, 246),
        scaffoldBackgroundColor: Colors.white,

       ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // highlightColor: ,
        primaryColor: const Color.fromARGB(255, 38, 38, 38),
        scaffoldBackgroundColor: const Color.fromARGB(255, 30, 30, 30),
      ),
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
      routes: [
        for (final go in notesGo)
          GoRoute(
            path: go.route,
            builder: (context, state) => go.builder(context),
          ),
        // for ()  
      ],
    ),
  ]
);

class Go {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const Go({
    required this.name,
    required this.route,
    required this.builder,  
  });
}

final notesGo = [
  Go(
    name: 'test', 
    route: Demo1.routePath, 
    builder: (context) => Demo1(),
  ),
];

