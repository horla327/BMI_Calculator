// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, unused_label

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';

const bottomContainerHeight = 50.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReuseableCard(
                  colour: activeCardColour,
                  cardChild: IconContent(
                    FontAwesomeIcons.mars,
                    'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  colour: activeCardColour,
                  cardChild: IconContent(
                    FontAwesomeIcons.venus,
                    'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReuseableCard(
              colour: activeCardColour,
              cardChild: Text(""),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReuseableCard(
                  colour: activeCardColour,
                  cardChild: Text(""),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  colour: activeCardColour,
                  cardChild: Text(""),
                ),
              ),
            ],
          )),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ]));
  }
}
