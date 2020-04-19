import 'package:flappy_playground/instance_widget.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playground',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Theme.of(context).primaryColorLight,
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              button: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple),
              ),
        ),
      ),
      routes: {
        '/': (ctx) => MyHomePage(),
        InstanceScreen.routeName: (ctx) => InstanceScreen(),
      },
    );
  }
}
