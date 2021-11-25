import 'package:flutter/material.dart';
import 'package:red_social_artwork/registro.dart';
import 'inicio.dart';
import 'login.dart';

void main() => runApp( MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Red Social';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      
      debugShowCheckedModeBanner: false,
      initialRoute:  '/login',
      routes: {
      '/login': (context) => loginPage(),
      '/registro': (context) => registroPage(),
      '/inicio': (context) => InicioPage(),
      },
    );
  }
}