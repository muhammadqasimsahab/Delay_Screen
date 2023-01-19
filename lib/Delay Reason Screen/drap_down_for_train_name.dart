import 'package:flutter/material.dart';

class DrapDownForTrainName extends StatefulWidget {
  const DrapDownForTrainName({Key? key}) : super(key: key);

  @override
  State<DrapDownForTrainName> createState() => _DrapDownForTrainNameState();
}

class _DrapDownForTrainNameState extends State<DrapDownForTrainName> {
  String dropdownValue = 'Enter Trains Name';
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
            'Akbar Express',
            'Allama Iqbal Express',
            'Attock Passenger',
            'Awam Express',
            'Abaseen Express',
            'Amruka Mixed '
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
