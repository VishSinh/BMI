import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bodyType,
      required this.bmiScore,
      required this.quoteText});

  final String bodyType;
  final String bmiScore;
  final String quoteText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Center(child: Text("BMI CALCULATOR")),
        // ),
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 0),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bodyType,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.green),
                  ),
                  Text(
                    bmiScore,
                    style:
                        TextStyle(fontSize: 100.0, fontWeight: FontWeight.w900),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      quoteText,
                      softWrap: true,
                      style: TextStyle(fontSize: 28.0),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                color: kBottomButtonColor,
                width: double.infinity,
                height: kBottomButtonHeight,
                margin: const EdgeInsets.only(top: 10.0),
                child: const Center(
                  child: Text('Re-Calculate', style: kLargeButtonTextStyle),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    ));
  }
}
