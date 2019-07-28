library gender_selector;

import 'package:flutter/material.dart';

enum Gender {MALE , FEMALE, NONE}

class GenderSelector extends StatefulWidget {

  String maleimg = 'assets/male.png';
  String femaleimg = 'assets/female.png';
  String maletxt = "Male";
  String femaletxt = "Female";

  EdgeInsetsGeometry padding;
  EdgeInsetsGeometry margin;

  Gender selectedGender;

  ValueChanged<Gender> onChanged;

  GenderSelector({
    this.maleimg = 'assets/male.png',
    this.femaleimg = 'assets/female.png',
    this.maletxt = "Male",
    this.femaletxt = "Female",
    this.padding = const EdgeInsets.all(0),
    this.margin = const EdgeInsets.all(0),
    this.selectedGender,
    this.onChanged
  });


  @override
  _GenderSelectorState createState() => _GenderSelectorState(
      maleimg: maleimg,
      femaleimg: femaleimg,
      maletxt: maletxt,
      femaletxt: femaletxt,
      padding: padding,
      margin: margin,
      selectedGender: selectedGender,
      onChanged: onChanged
  );
}

class _GenderSelectorState extends State<GenderSelector> {


  String maleimg = 'assets/male.png';
  String femaleimg = 'assets/female.png';
  String maletxt = "Male";
  String femaletxt = "Female";

  EdgeInsetsGeometry padding;
  EdgeInsetsGeometry margin;

  Gender selectedGender;

  ValueChanged<Gender> onChanged;

  _GenderSelectorState({
    this.maleimg = 'assets/male.png',
    this.femaleimg = 'assets/female.png',
    this.maletxt = "Male",
    this.femaletxt = "Female",
    this.padding = const EdgeInsets.all(0),
    this.margin = const EdgeInsets.all(0),
    this.selectedGender,
    this.onChanged
  }) {

    print(this.selectedGender);

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          // male
          GestureDetector(
            onTap: () {

              setState(() {
                selectedGender = Gender.MALE;
                onChanged(selectedGender);
              });

            },
            child: Container(
                child: Column(
                  children: <Widget>[

                    Container(
                      decoration: ShapeDecoration(
                          shape: CircleBorder(
                              side: BorderSide(
                                  width: 4,
                                  color: selectedGender==Gender.MALE?Colors.redAccent:Colors.white
                              )
                          )
                      ),
                      child: Image(
                        image: AssetImage(maleimg),
                        width: 130,
                        height: 130,
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Text(maletxt, style: TextStyle(fontSize: 20),),

                  ],
                )
            ),
          ),

          // female
          GestureDetector(
            onTap: () {

              setState(() {
                selectedGender = Gender.FEMALE;
                onChanged(selectedGender);
              });

            },
            child: Container(

                child: Column(
                  children: <Widget>[

                    Container(
                      decoration: ShapeDecoration(
                          shape: CircleBorder(
                              side: BorderSide(
                                  width: 4,
                                  color: selectedGender==Gender.FEMALE?Colors.redAccent:Colors.white
                              )
                          )
                      ),
                      child: Image(
                        image: AssetImage(femaleimg),
                        width: 130,
                        height: 130,
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Text(femaletxt, style: TextStyle(fontSize: 20),),

                  ],
                )
            ),
          ),


        ],

      ),

    );
  }
}
