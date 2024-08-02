import 'package:Quiz_app/quiz_App/Style/Big_text.dart';
import 'package:Quiz_app/quiz_App/Style/Small_text.dart';
import 'package:Quiz_app/quiz_App/pages/quiz_page.dart';
import 'package:Quiz_app/quiz_App/pages/report.dart';
import 'package:flutter/material.dart';

class result_page extends StatelessWidget {
  result_page({
    super.key,
    required this.Qn,
    required this.correctans,
    required this.wrongans,
    required this.boooleanOfQuestion,
  });

  int correctans;
  int wrongans;
  int Qn;
  double? avag;
  List<String> boooleanOfQuestion;
  int getaAvarg() {
    avag = correctans / Qn * 100;
    return avag!.toInt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 123, 163),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  // color: Colors.white
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      getaAvarg() >= 60
                          ? "assest/images/photo.png"
                          : "assest/images/fail.png",
                      // scale: 0.8,
                      width: 250,
                      height: 250,
                      alignment: Alignment.topCenter,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BigText(
                        getaAvarg() <= 60
                            ? "Your result is : FAILED"
                            : "Your result is : PASS",
                        fontfamily: "fff",
                        color: getaAvarg() >= 60
                            ? Color.fromARGB(255, 15, 102, 71)
                            : Color.fromARGB(255, 102, 15, 15)),
                    SizedBox(
                      height: 10,
                    ),
                    Smalltext("Your avarge is : ${getaAvarg()} %",
                        color: getaAvarg() >= 60
                            ? Color.fromARGB(255, 15, 102, 71)
                            : Color.fromARGB(255, 102, 15, 15)),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding:
                  EdgeInsets.only(top: 30, right: 10, left: 10, bottom: 30),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color.fromARGB(164, 253, 112, 206),
                        const Color.fromARGB(186, 255, 193, 7),
                      ]),
                  borderRadius: BorderRadius.circular(40)),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(150, 93, 205, 115),
                        borderRadius: BorderRadius.circular(40)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.done,
                          color: Color.fromARGB(255, 5, 111, 9),
                          size: 40,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: BigText(
                            "you have $correctans correct answer from $Qn ",
                            size: 25,
                            color: Color.fromARGB(255, 5, 111, 9),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.circular(40)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.close,
                          color: Colors.red[800],
                          size: 40,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: BigText(
                            "you have $wrongans correct answer from $Qn ",
                            size: 25,
                            color: Color.fromARGB(255, 255, 0, 0),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 10),
                    /////////////    bottum botton
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              // Navigator.pushAndRemoveUntil(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) {
                              //       return quiz_page();
                              //     },
                              //   ),
                              //   (route) => false,
                              // );

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return quiz_page();
                                  },
                                ),
                              );
                              // Navigator.pop(context);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(181, 156, 101, 165),
                                  borderRadius: BorderRadius.circular(20)),
                              child: BigText(
                                "Repeat",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    print("result ${boooleanOfQuestion}");
                                    return Report(
                                      QN: Qn,
                                      booleanOfQuestion: boooleanOfQuestion,
                                    );
                                  },
                                ),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(181, 156, 101, 165),
                                  borderRadius: BorderRadius.circular(20)),
                              child: BigText(
                                "Report",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
