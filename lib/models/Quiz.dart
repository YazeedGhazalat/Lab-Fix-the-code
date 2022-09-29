import 'package:flutter/material.dart';

import '../component/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 39, 39, 39),
            bottom: TabBar(tabs: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
            ]),
            title: Text("Quiz App"),
          ),
          body: TabBarView(children: [
            Qus(
                numOfRightans: 1,
                answer_1: "Cairo",
                answer_2: "Amman",
                answer_3: "Alexandria",
                answer_4: "Dammam",
                qus_text: "What is the capital of Egypt?"),
            Qus(
                numOfRightans: 2,
                answer_1: "Cairo",
                answer_2: "Amman",
                answer_3: "Alexandria",
                answer_4: "Dammam",
                qus_text: "What is the capital of Jordan?"),
            Qus(
                numOfRightans: 2,
                answer_1: "Dubai",
                answer_2: "Abu Dhabi",
                answer_3: "Alexandria",
                answer_4: "Sharjeh",
                qus_text: "What is the capital of UAE?"),
            Qus(
                numOfRightans: 4,
                answer_1: "Cairo",
                answer_2: "Istanbul",
                answer_3: "Catalonia",
                answer_4: "Madrid",
                qus_text: "What is the capital of Spain?"),
            Qus(
                numOfRightans: 2,
                answer_1: "Rio de Janeiro",
                answer_2: "Brasilia",
                answer_3: "São Paulo",
                answer_4: "PARA",
                qus_text: "What is the capital of Brazil?"),
            Qus(
                numOfRightans: 4,
                answer_1: "New York",
                answer_2: "Virginia",
                answer_3: "Atlanta",
                answer_4: "Washington",
                qus_text: "What is the capital of USA?"),
          ]),
        ));
  }
}
