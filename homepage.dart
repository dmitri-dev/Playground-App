import 'package:flappy_playground/instance_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {

  void forwardPage(BuildContext ctx){
    Navigator.of(ctx).pushNamed(InstanceScreen.routeName, );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: Theme.of(context).appBarTheme.textTheme.title,
        ),
        actions: [
          IconButton(
            onPressed: () => forwardPage(context),
            icon: Icon(Icons.attach_file),
          ),
        ],
      ),
      body: InstanceScreen(),
    );
  }
}
