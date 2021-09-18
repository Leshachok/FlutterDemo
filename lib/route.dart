import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestRoute extends StatefulWidget {
  @override
  _TestRouteState createState() => _TestRouteState();
}

class _TestRouteState extends State<TestRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("wow new window"),
      ),
      body:
        Container(
          color: Colors.lightGreen,
          child: const Center(
            child: Text(
              "Welcome to new window",
              style: TextStyle(
                fontSize: 35
              ),
            ),
          ),
        )
    );
  }
}
