import 'package:Quiz_app/quiz_App/Style/Big_text.dart';
import 'package:Quiz_app/quiz_App/Style/Small_text.dart';
import 'package:Quiz_app/quiz_App/data/basic_test.dart';
import 'package:Quiz_app/quiz_App/data/qustion_model.dart';
import 'package:Quiz_app/quiz_App/pages/result_Page.dart';
import 'package:flutter/material.dart';

class quiz_page extends StatefulWidget {
  quiz_page({super.key});
  static int? index;

  @override
  State<quiz_page> createState() => _quiz_pageState();
}

class _quiz_pageState extends State<quiz_page> {
  int QN = 0;
  int? selectedAnswer = null;
  int numCorrectAns = 0;
  int numwrongAnswer = 0;
  int? selsectlang;
  static int? selectQuiz = quiz_page.index;
  List<QustionModel> quziData = allQustion[selectQuiz!];
  List<String> boooleanOfQuestion = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.pink, Colors.amber],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(
              Basic_text().programmLang[selectQuiz!],
              color: Colors.purple[700]!,
              size: 40,
            ),
            BigText(
              quziData[QN].qustion,
            ),
            SizedBox(
              height: 10,
            ),
            Smalltext(
              " # qustion is ${QN + 1}   / ${quziData.length}  ",
            ),
            SizedBox(
              height: 10,
            ),
            BigText(
              "Answers ",
              color: Colors.white,
              fontfamily: "fff",
              letterSpacing: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(124, 158, 158, 158),
                      Color.fromARGB(186, 255, 255, 255),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    BigText(
                      "select one",
                    ),
                    ListView.builder(
                      itemCount: quziData[QN].answer.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedAnswer = index;
                            });
                            print(selectedAnswer);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              bottom: 10,
                              right: 20,
                              left: 20,
                            ),
                            child: Container(
                              height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: selectedAnswer == index
                                    ? Color(0xA72196F3)
                                    : Color(0x4DE33EA7),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BigText(
                                      " ${quziData[QN].answer[index].idityfier}",
                                      color: Colors.white,
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: BigText(
                                          " ${quziData[QN].answer[index].ansnwer}",
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    selectedAnswer == index
                                        ? Stack(
                                            alignment: Alignment.center,
                                            children: [
                                                Icon(
                                                  Icons.circle_outlined,
                                                  color: selectedAnswer == index
                                                      ? Colors.black
                                                      : Colors.white,
                                                ),
                                                Icon(
                                                  Icons.circle,
                                                  color: selectedAnswer == index
                                                      ? Colors.black
                                                      : Colors.white,
                                                  size: 12,
                                                ),
                                              ])
                                        : Icon(Icons.circle_outlined)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    if (QN > 0)
                      setState(() {
                        QN--;
                      });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 70,
                    width: 180,
                    decoration: BoxDecoration(
                        gradient: RadialGradient(radius: 0.6, colors: [
                          const Color.fromARGB(167, 255, 235, 59),
                          Color.fromARGB(110, 255, 37, 109),
                        ]),
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)),
                    child: BigText(
                      "Back",
                    ),
                  ),
                ),

                ////////////   حساب عدد الاجابات الصحيحية
                InkWell(
                  onTap: () {
                    boooleanOfQuestion.add(quziData[QN]
                        .answer[selectedAnswer!]
                        .idityfier as String);
                    if (quziData[QN].answer[selectedAnswer!].idityfier ==
                        quziData[QN].correctAnswer) {
                      numCorrectAns++;
                    } else {
                      numwrongAnswer++;
                    }
                    if (QN < quziData.length - 1)
                      setState(() {
                        QN++;

                        selectedAnswer = null;
                      });
                    else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return result_page(
                          Qn: QN + 1,
                          correctans: numCorrectAns,
                          wrongans: numwrongAnswer,
                          boooleanOfQuestion: boooleanOfQuestion,
                        );
                      }));
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 70,
                    width: 180,
                    decoration: BoxDecoration(
                        gradient: RadialGradient(radius: 0.5, colors: [
                          const Color.fromARGB(167, 255, 235, 59),
                          Color.fromARGB(110, 255, 37, 109),
                        ]),
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)),
                    child: BigText(
                      "Next",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
