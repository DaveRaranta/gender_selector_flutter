import 'package:flutter/material.dart';
import '../lib/gender_selector.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {


  String selectedGender = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GenderSelector(
          margin: EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 10,),
          selectedGender: Gender.FEMALE,
          onChanged: (gender) async {

            setState(() {
              if(gender == Gender.FEMALE) {
                selectedGender = "female";
              } else {
                selectedGender = "male";
              }
            });

          },

        )
      ),
    );
  }
}