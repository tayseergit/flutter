import 'package:Quiz_app/quiz_App/Style/Big_text.dart';
import 'package:Quiz_app/quiz_App/Style/Small_text.dart';
import 'package:Quiz_app/quiz_App/data/basic_test.dart';
import 'package:Quiz_app/quiz_App/data/qustion_model.dart';
import 'package:Quiz_app/quiz_App/pages/home_page.dart';
import 'package:Quiz_app/quiz_App/pages/quiz_page.dart';
import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  Report({super.key, required this.QN, this.booleanOfQuestion});
  int QN;
  Basic_text languages = Basic_text();
  List<QustionModel> quziData = allQustion[quiz_page.index!];
  List<String>? booleanOfQuestion;
  @override
  Widget build(BuildContext context) {
    print(booleanOfQuestion);
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
              child: Container(
                width: double.infinity,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // alignment: Alignment.centerLeft,
                        child: Expanded(
                          child: BigText(
                            "Your Report in ${languages.programmLang[quiz_page.index!]}",
                            size: 35,
                            fontfamily: "Dan",
                            letterSpacing: 5,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return home_page();
                              },
                            ),
                          );
                        },
                        child: Icon(
                          Icons.home,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Image.asset(
                "assest/images/download.png",
                height: 300,
                width: 300,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: QN,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                            gradient: RadialGradient(radius: 4, colors: [
                              Colors.brown[200]!,
                              Colors.redAccent,
                            ])),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Smalltext(
                                  "${index + 1}  : ${quziData[index].qustion}",
                                  color: Color.fromARGB(255, 128, 13, 82),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Smalltext(
                                      "(${quziData[index].correctAnswer} is the correct)",
                                      color: Color.fromARGB(255, 54, 120, 56),
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Smalltext(
                                      "(${booleanOfQuestion![index]} your answer)",
                                      size: 18,
                                      color: quziData[index].correctAnswer ==
                                              booleanOfQuestion![index]
                                          ? Colors.black
                                          : Colors.red,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        // BigText(booleanOfQuestion![index])
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
