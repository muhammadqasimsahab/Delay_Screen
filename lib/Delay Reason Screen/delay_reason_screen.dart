import 'package:flutter/material.dart';

import 'darp_down.dart';
import 'drap_down_for_code.dart';
import 'drap_down_for_train_name.dart';

class DelayReasinScreen extends StatefulWidget {
  const DelayReasinScreen({Key? key}) : super(key: key);

  @override
  State<DelayReasinScreen> createState() => _DelayReasinScreenState();
}

class _DelayReasinScreenState extends State<DelayReasinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: ListView(children: [
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            'Add Train Delay',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          )),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                DrapDownForTrainName(),
                SizedBox(height: 30),
                DrapDownForCode(),
                SizedBox(height: 30),
                Card(
                  elevation: 3,
                  child: ClipPath(
                    child: Container(
                      child: TextField(
                        decoration:
                            InputDecoration(hintText: 'Enter Delay Reason'),
                        maxLines: 4,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: 190,
                  color: Color(0xffb5bc23),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          letterSpacing: 1, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
