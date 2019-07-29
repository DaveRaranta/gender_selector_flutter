library gender_selector;

import 'package:flutter/material.dart';

enum Gender {MALE , FEMALE, NONE}

class GenderSelector extends StatefulWidget {

  String maleimg = 'https://raw.githubusercontent.com/dhruvil2000/gender_selector_flutter/master/assets/male.png';
  String femaleimg = 'https://raw.githubusercontent.com/dhruvil2000/gender_selector_flutter/master/assets/female.png';
  String maletxt = "Male";
  String femaletxt = "Female";

  EdgeInsetsGeometry padding;
  EdgeInsetsGeometry margin;

  Gender selectedGender;

  ValueChanged<Gender> onChanged;

  GenderSelector({
    this.maleimg = 'https://raw.githubusercontent.com/dhruvil2000/gender_selector_flutter/master/assets/male.png',
    this.femaleimg = 'https://raw.githubusercontent.com/dhruvil2000/gender_selector_flutter/master/assets/female.png',
    this.maletxt = "Male",
    this.femaletxt = "Female",
    this.padding = const EdgeInsets.all(0),
    this.margin = const EdgeInsets.all(0),
    this.selectedGender,
    this.onChanged
  });


  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      padding: widget.padding,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          // male
          GestureDetector(
            onTap: () {

              setState(() {
                widget.selectedGender = Gender.MALE;
                widget.onChanged(widget.selectedGender);
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
                                  color: widget.selectedGender==Gender.MALE?Colors.redAccent:Colors.white
                              )
                          )
                      ),
                      child: Image(
                        image: NetworkImage(widget.maleimg),
                        width: 130,
                        height: 130,
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Text(widget.maletxt, style: TextStyle(fontSize: 20),),

                  ],
                )
            ),
          ),

          // female
          GestureDetector(
            onTap: () {

              setState(() {
                widget.selectedGender = Gender.FEMALE;
                widget.onChanged(widget.selectedGender);
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
                                  color: widget.selectedGender==Gender.FEMALE?Colors.redAccent:Colors.white
                              )
                          )
                      ),
                      child: Image(
                        image: NetworkImage(widget.femaleimg),
                        width: 130,
                        height: 130,
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Text(widget.femaletxt, style: TextStyle(fontSize: 20),),

                  ],
                )
            ),
          ),


        ],

      ),

    );
  }
}
