import 'package:flutter/material.dart';

class DrapDownForCode extends StatefulWidget {
  const DrapDownForCode({Key? key}) : super(key: key);

  @override
  State<DrapDownForCode> createState() => _DrapDownForCodeState();
}

class _DrapDownForCodeState extends State<DrapDownForCode> {
  String dropdownValue = 'Enter Delay Code';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 40,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: DropdownButton<String>(
          hint: Text(dropdownValue),
          underline: Container(),
          focusColor: Colors.white,
          borderRadius: BorderRadius.circular(10),
          // value: dropdownValue,
          items: <String>['110DN', '101UP', '102DN', '103UP', '105UP', '108DN ']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
        ),
      ),
    );
  }
}
