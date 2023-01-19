import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DropdownFordelayscreen extends StatefulWidget {
  DropdownFordelayscreen({Key? key}) : super(key: key);

  @override
  State<DropdownFordelayscreen> createState() => _DropdownFordelayscreenState();
}

class _DropdownFordelayscreenState extends State<DropdownFordelayscreen> {
  String dropdownValue = 'Station/ Block Section';

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
          items: <String>[
            'Gujranwala',
            'Wazirabad',
            'Gujrat',
            'Lala Musa',
            'Kharian Cantt',
            'Jhelum'
          ].map<DropdownMenuItem<String>>((String value) {
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
