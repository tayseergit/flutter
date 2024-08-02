class QustionModel {
  String qustion;
  List<AnswersModel> answer;
  String correctAnswer;

  QustionModel(
      {required this.answer,
      required this.correctAnswer,
      required this.qustion});
}

class AnswersModel {
  String? idityfier;
  String? ansnwer;
  AnswersModel({required this.ansnwer, required this.idityfier});
}

List<QustionModel> quziDatac_ = [
  QustionModel(answer: [
    AnswersModel(ansnwer: "C", idityfier: "A:"),
    AnswersModel(ansnwer: "C#", idityfier: "B:"),
    AnswersModel(ansnwer: 'html', idityfier: " c:"),
    AnswersModel(ansnwer: "php", idityfier: "d:"),
  ], correctAnswer: "A:", qustion: "Which lang is the mother of c++"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "yes", idityfier: "A:"),
    AnswersModel(ansnwer: "no", idityfier: "B:"),
    // AnswersModel(ansnwer: 'both', idityfier: " c"),
    // AnswersModel(ansnwer: "non", idityfier: "d"),
  ], correctAnswer: "A:", qustion: "Are you studying c++ ?"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "10", idityfier: "A:"),
    AnswersModel(ansnwer: "20", idityfier: "B:"),
    AnswersModel(ansnwer: '30', idityfier: "c:"),
    AnswersModel(ansnwer: "40", idityfier: "d:"),
  ], correctAnswer: "c:", qustion: "How long have you know c++ ?"),
];
List<QustionModel> quziDataDart = [
  QustionModel(answer: [
    AnswersModel(ansnwer: "me", idityfier: "A:"),
    AnswersModel(ansnwer: "you", idityfier: "B:"),
    AnswersModel(ansnwer: 'both', idityfier: " c:"),
    AnswersModel(ansnwer: "no one", idityfier: "d:"),
  ], correctAnswer: "d:", qustion: "Who create dart"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "yes", idityfier: "A:"),
    AnswersModel(ansnwer: "no", idityfier: "B:"),
    // AnswersModel(ansnwer: 'both', idityfier: " c"),
    // AnswersModel(ansnwer: "non", idityfier: "d"),
  ], correctAnswer: "A:", qustion: "Are you studying Dart ?"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "10", idityfier: "A:"),
    AnswersModel(ansnwer: "20", idityfier: "B:"),
    AnswersModel(ansnwer: '30', idityfier: "c:"),
    AnswersModel(ansnwer: "40", idityfier: "d:"),
  ], correctAnswer: "c:", qustion: "how long have you know dart ?"),
];
List<QustionModel> quziDataJava = [
  QustionModel(answer: [
    AnswersModel(ansnwer: "class", idityfier: "A:"),
    AnswersModel(ansnwer: "fun", idityfier: "B:"),
    AnswersModel(ansnwer: 'both', idityfier: " c:"),
    AnswersModel(ansnwer: "int", idityfier: "d:"),
  ], correctAnswer: "d:", qustion: "which key generats class in java"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "yes", idityfier: "A:"),
    AnswersModel(ansnwer: "no", idityfier: "B:"),
    // AnswersModel(ansnwer: 'both', idityfier: " c"),
    // AnswersModel(ansnwer: "non", idityfier: "d"),
  ], correctAnswer: "A:", qustion: "Are you studying java ?"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "10", idityfier: "A:"),
    AnswersModel(ansnwer: "20", idityfier: "B:"),
    AnswersModel(ansnwer: '30', idityfier: "c:"),
    AnswersModel(ansnwer: "40", idityfier: "d:"),
  ], correctAnswer: "c:", qustion: "how long have you know java ?"),
];
List<QustionModel> quziDataPython = [
  QustionModel(answer: [
    AnswersModel(ansnwer: "AI", idityfier: "A:"),
    AnswersModel(ansnwer: "no uses", idityfier: "B:"),
    AnswersModel(ansnwer: 'programing', idityfier: " c:"),
    AnswersModel(ansnwer: "all", idityfier: "d:"),
  ], correctAnswer: "d:", qustion: "where you can use python"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "yes", idityfier: "A:"),
    AnswersModel(ansnwer: "no", idityfier: "B:"),
    // AnswersModel(ansnwer: 'both', idityfier: " c"),
    // AnswersModel(ansnwer: "non", idityfier: "d"),
  ], correctAnswer: "A:", qustion: "Are you studying python ?"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "10", idityfier: "A:"),
    AnswersModel(ansnwer: "20", idityfier: "B:"),
    AnswersModel(ansnwer: '30', idityfier: "c:"),
    AnswersModel(ansnwer: "40", idityfier: "d:"),
  ], correctAnswer: "c:", qustion: "how long have you know puthon ?"),
];
List<QustionModel> quziDatac = [
  QustionModel(answer: [
    AnswersModel(ansnwer: "yes", idityfier: "A:"),
    AnswersModel(ansnwer: "no", idityfier: "B:"),
    AnswersModel(ansnwer: 'both  ', idityfier: "c:"),
    AnswersModel(ansnwer: "ok", idityfier: "d:"),
  ], correctAnswer: "d:", qustion: "do you like c"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "yes", idityfier: "A:"),
    AnswersModel(ansnwer: "no", idityfier: "B:"),
    // AnswersModel(ansnwer: 'both', idityfier: " c"),
    // AnswersModel(ansnwer: "non", idityfier: "d"),
  ], correctAnswer: "A:", qustion: "Are you studying c ?"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "10", idityfier: "A:"),
    AnswersModel(ansnwer: "20", idityfier: "B:"),
    AnswersModel(ansnwer: '30', idityfier: "c:"),
    AnswersModel(ansnwer: "40", idityfier: "d:"),
  ], correctAnswer: "c:", qustion: "how long have you know c ?"),
];
List<QustionModel> quziDatahtml = [
  QustionModel(answer: [
    AnswersModel(ansnwer: "frontend", idityfier: "A:"),
    AnswersModel(ansnwer: "backend", idityfier: "B:"),
    AnswersModel(ansnwer: 'non', idityfier: " c:"),
    AnswersModel(ansnwer: "both", idityfier: "d:"),
  ], correctAnswer: "d:", qustion: "Where you can use html"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "yes", idityfier: "A:"),
    AnswersModel(ansnwer: "no", idityfier: "B:"),
    // AnswersModel(ansnwer: 'both', idityfier: " c"),
    // AnswersModel(ansnwer: "non", idityfier: "d"),
  ], correctAnswer: "A:", qustion: "Are you studying html?"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "10", idityfier: "A:"),
    AnswersModel(ansnwer: "20", idityfier: "B:"),
    AnswersModel(ansnwer: '30', idityfier: "c:"),
    AnswersModel(ansnwer: "40", idityfier: "d:"),
  ], correctAnswer: "c:", qustion: "how have you known html ?"),
];
List<QustionModel> quziDatacss = [
  QustionModel(answer: [
    AnswersModel(ansnwer: "yes", idityfier: "A:"),
    AnswersModel(ansnwer: "no", idityfier: "B:"),
    AnswersModel(ansnwer: 'both', idityfier: " c:"),
    AnswersModel(ansnwer: "ok", idityfier: "d:"),
  ], correctAnswer: "d:", qustion: "Do you like css"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "yes", idityfier: "A:"),
    AnswersModel(ansnwer: "no", idityfier: "B:"),
    // AnswersModel(ansnwer: 'both', idityfier: " c"),
    // AnswersModel(ansnwer: "non", idityfier: "d"),
  ], correctAnswer: "A:", qustion: "Are you studying css ?"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "10", idityfier: "A:"),
    AnswersModel(ansnwer: "20", idityfier: "B:"),
    AnswersModel(ansnwer: '30', idityfier: "c:"),
    AnswersModel(ansnwer: "40", idityfier: "d:"),
  ], correctAnswer: "c:", qustion: "how long have you know css ?"),
];
List<QustionModel> quziDatascript = [
  QustionModel(answer: [
    AnswersModel(ansnwer: "Yes", idityfier: "A:"),
    AnswersModel(ansnwer: "NO", idityfier: "B:"),
  ], correctAnswer: "d:", qustion: "Can you use script in AI"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "yes", idityfier: "A:"),
    AnswersModel(ansnwer: "no", idityfier: "B:"),
    // AnswersModel(ansnwer: 'both', idityfier: " c"),
    // AnswersModel(ansnwer: "non", idityfier: "d"),
  ], correctAnswer: "A:", qustion: "Are you studying script ?"),
  QustionModel(answer: [
    AnswersModel(ansnwer: "10", idityfier: "A:"),
    AnswersModel(ansnwer: "20", idityfier: "B:"),
    AnswersModel(ansnwer: '30', idityfier: "c:"),
    AnswersModel(ansnwer: "40", idityfier: "d:"),
  ], correctAnswer: "c:", qustion: "how Have you known Javascript?"),
];

List<List<QustionModel>> allQustion = [
  quziDatac_,
  quziDataDart,
  quziDataJava,
  quziDataPython,
  quziDatac,
  quziDatahtml,
  quziDatacss,
  quziDatascript,
];
