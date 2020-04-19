import 'package:flutter/material.dart';

import 'models/instance.dart';

class InstanceScreen extends StatelessWidget {
  static const routeName = '/instance-screen';

  final List<Instance> instanceList = [
    Instance(
      title: 'title',
      integer: 0,
      date: DateTime.now().subtract(Duration(days: 1)),
    ),
    Instance(
      title: 'title2',
      integer: 1,
      date: DateTime.now().subtract(Duration(days: 2)),
    ),
    Instance(
      title: 'title3',
      integer: 2,
      date: DateTime.now().subtract(Duration(days: 3)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Instance Screen'),),
      body: Column(
        children: instanceList.map((index) {
          return Container(
            child: Row(
              children: <Widget>[
                Card(
                  child: Text('${index.integer}'),
                ),
                Column(
                  children: <Widget>[
                    Text('${index.title}'),
                    Text('${index.date}'),
                  ],
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
