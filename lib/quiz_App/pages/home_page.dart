import 'package:Quiz_app/quiz_App/Style/Big_text.dart';
import 'package:Quiz_app/quiz_App/data/basic_test.dart';
import 'package:Quiz_app/quiz_App/pages/quiz_page.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  Basic_text tests = Basic_text();
  static int? selectQuiz;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        children: List.generate(
          8,
          (index) {
            return InkWell(
              onTap: () {
                setState(() {
                  quiz_page.index = index;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return quiz_page();
                    },
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                child: BigText(
                  tests.programmLang[index],
                  color: Colors.black,
                  fontfamily: "fff",
                  size: 40,
                ),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 255, 235, 59),
                        Color.fromARGB(194, 255, 37, 110),
                      ],
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}
