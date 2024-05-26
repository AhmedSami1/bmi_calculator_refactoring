import 'dart:math';
import 'package:bmi_calculator/components/gender_widget.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wheel_slider/wheel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  double height = 150;
  int age = 20;
  int weight = 50;
  String getBMICategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    }
    else if (bmi >= 18.5 && bmi <= 24.9) {
      return 'Normal weight';
    }
    else if (bmi >= 25 && bmi <= 29.9) {
      return 'Overweight';
    }
    else if (bmi >= 30) {
      return 'Obesity';
    }
    else {
      return 'Invalid BMI';
    }
  }
  String getBMIRange(double bmi) {
    if (bmi < 18.5) {
      return 'less than 18.5';
    }
    else if (bmi >= 18.5 && bmi <= 24.9) {
      return '18.5 - 24.9';
    }
    else if (bmi >= 25 && bmi <= 29.9) {
      return '25 - 29.9';
    }
    else if (bmi >= 30) {
      return 'higher than 30';
    }
    else {
      return 'Invalid BMI';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: GoogleFonts.aBeeZee(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16.0, left: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Gender',
              style: GoogleFonts.aBeeZee(
                textStyle: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                GenderWidget(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    iconColor: isMale ? const Color(0xff2566cf) : Colors.grey,
                    backGroundColor:
                        isMale ? const Color(0xffdfe9f9) : Colors.grey.shade300,
                    text: 'Male',
                    image: 'assets/image/male.png'),
                const SizedBox(
                  width: 10.0,
                ),
                GenderWidget(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  iconColor: isMale
                      ? const Color(0xff8b8b8b)
                      : const Color(0xff2566cf),
                  backGroundColor:
                      isMale ? Colors.grey.shade300 : const Color(0xffdfe9f9),
                  text: 'Female',
                  image: 'assets/image/female.png',
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              'Height (cm)',
              style: GoogleFonts.aBeeZee(
                textStyle: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              height: 140.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    color: Colors.grey.shade400,
                    width: 2.0,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WheelSlider(
                    totalCount: 220,
                    initValue: 120,
                    interval: 1.0,
                    scrollPhysics: const BouncingScrollPhysics(),
                    isVibrate: true,
                    pointerColor: Colors.blue,
                    onValueChanged: (value) {
                      setState(() {

                      });
                      height = value;
                    },
                  ),
                  Text(
                    '${height.round()}',
                    style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25.0)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Age',
                        style: GoogleFonts.aBeeZee(
                          textStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        height: 80.0,
                        width: 170.0,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: 'FAB 1',
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              backgroundColor: Colors.white,
                              mini: true,
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '$age',
                              style: GoogleFonts.aBeeZee(
                                textStyle: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              heroTag: 'FAB 2',
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: Colors.white,
                              mini: true,
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Weight (kg)',
                        style: GoogleFonts.aBeeZee(
                          textStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        height: 80.0,
                        width: 170,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(16.0)),
                        child: WheelSlider.number(
                          squeeze: 0.95,
                          totalCount: 200,
                          initValue: 50,
                          unSelectedNumberStyle: GoogleFonts.aBeeZee(
                            textStyle: const TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          selectedNumberStyle: GoogleFonts.aBeeZee(
                            textStyle: const TextStyle(
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onValueChanged: (value) {
                            setState(() {
                              weight = value;
                            });
                          },
                          currentIndex: weight,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              width: double.infinity,
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: MaterialButton(
                onPressed: () {
                  var result = weight / pow(height / 100, 2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultScreen(
                                height: height,
                                age: age,
                                isMale: isMale,
                                weight: weight,
                                result: result,
                                state: getBMICategory(result),
                                range: getBMIRange(result),
                              )));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                color: const Color(0xff2566cf),
                child: Text(
                  'CALCULATE BMI',
                  style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
