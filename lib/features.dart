
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/route.dart';

import 'counter.dart';

class FeaturesFragment extends StatefulWidget {
  @override
  _FeaturesFragmentState createState() => _FeaturesFragmentState();
}

class _FeaturesFragmentState extends State<FeaturesFragment> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
                vertical: 10,
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      bottom: 5
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 20
                  ),
                  child: const Center(
                    child: Text(
                      "Счетчик с сохранением в preferences",
                      style: TextStyle(
                          fontSize: 17
                      ),
                    ),
                  ),
                  color: Colors.green,
                ),
                Counter(),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 5
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 20
                  ),
                  child: const Center(
                    child: Text(
                        "Открытие нового окна",
                        style: TextStyle(
                          fontSize: 17
                        ),
                    ),
                  ),
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 5
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 20
                  ),
                  child: Center(
                    child: IconButton(
                        onPressed: openActivity,
                        icon: const Icon(
                            Icons.desktop_windows
                        )
                    ),
                  ),
                  color: Colors.blue,
                )
              ],
            ),
          )
        ],
      )
    );
  }

  void openActivity(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TestRoute())
    );
  }

}
