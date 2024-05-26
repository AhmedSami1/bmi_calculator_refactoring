import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
   const ResultScreen({
    super.key,
    required this.isMale,
    required this.age,
    required this.height,
    required this.weight,
    required this.result,
    required this.state,
    required this.range,
  });
   final bool isMale;
     final int age;
     final double height;
     final int weight;
     final double result;
     final String state;
     final String range;



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'Back',
          style: GoogleFonts.aBeeZee(
            textStyle:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: ()
          {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text(
              'Result',
              style: GoogleFonts.aBeeZee(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                'Your BMI is',
                style: GoogleFonts.aBeeZee(
                  textStyle: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Center(
                child: Container(
                  height: 110.0,
                  width: 110.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: const Color(0xff2566cf),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Text(
                          '${result.round()}',
                        style: GoogleFonts.aBeeZee(
                          textStyle:const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                          'kg/m2',
                        style: GoogleFonts.aBeeZee(
                          textStyle:TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                '($state)',
                style: GoogleFonts.aBeeZee(
                  textStyle: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              height: 100.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                border: Border.all(color: Colors.grey,),

              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children:
                [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                       Icon(
                          isMale ? Icons.man : Icons.woman,
                        size: 45.0,
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Text(
                        '${isMale? 'Male':'Female'}',
                        style: GoogleFonts.aBeeZee(
                          textStyle:const TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Text(
                        '$age',
                        style: GoogleFonts.aBeeZee(
                          textStyle: const TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ) ,
                        ),
                      ),
                      Text(
                        'Age',
                        style: GoogleFonts.aBeeZee(
                          textStyle:const TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Text(
                        '$height',
                        style: GoogleFonts.aBeeZee(
                          textStyle: const TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ) ,
                        ),
                      ),
                      Text(
                        'Height',
                        style: GoogleFonts.aBeeZee(
                          textStyle:const TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Text(
                        '${weight.round()}',
                        style: GoogleFonts.aBeeZee(
                          textStyle: const TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ) ,
                        ),
                      ),
                      Text(
                        'Weight',
                        style: GoogleFonts.aBeeZee(
                          textStyle:const TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:
                [
                  RichText(
                    text: TextSpan(
                      text: 'A BMI of',
                      style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                          fontSize: 18.0, color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),),
                      children: <TextSpan>
                      [
                        TextSpan(text: ' $range',style: GoogleFonts.aBeeZee(
                          textStyle: const TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff326fd2),
                            fontWeight: FontWeight.bold,

                          ),
                        ),),
                        const TextSpan(text: ' indicates that your weight is in the'),
                        TextSpan(text: ' $state',style: GoogleFonts.aBeeZee(
                          textStyle: const TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff326fd2),
                            fontWeight: FontWeight.bold,

                          ),
                        ),),
                        const TextSpan(text: ' category for a person of your height'),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    'Maintaining a healthy weight reduce the risk of diseases associated with overweight and obesity',
                    style: GoogleFonts.aBeeZee(
                      textStyle: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,

                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: MaterialButton(
                onPressed: ()
                {
                  Navigator.pop(context);


                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                color: const Color(0xff2566cf),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'TRY AGAIN',
                      style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white
                        ),
                      ),
                    
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Icon(
                        Icons.refresh_outlined,
                      color: Colors.white,
                      weight: 50.0,
                      size: 28,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
