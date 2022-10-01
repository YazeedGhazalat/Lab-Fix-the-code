import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab_10/Home.dart';
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
          automaticallyImplyLeading: false,
          title: Image(
            height: 30,
            image: AssetImage("images/fifa-removebg-preview.png"),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(197, 247, 80, 1.000),
          actions: [
            IconButton(
              onPressed: (() {
                /**Navigator.pop(context, MaterialPageRoute(builder: (context) {
                    return Home();
                  })); */
                showDialog(
                    context: context,
                    builder: ((context) {
                      return AlertDialog(
                        backgroundColor: Color.fromRGBO(26, 32, 51, 1.000),
                        content: Text(
                          "Do you want to restart or exet??",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "BebasNeue",
                              fontStyle: FontStyle.italic,
                              fontSize: 25),
                        ),
                        actionsAlignment: MainAxisAlignment.center,
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(197, 247, 80, 1.000),
                                  alignment: Alignment.centerLeft,
                                  minimumSize: const Size(100, 50),
                                  elevation: 5,
                                  shadowColor:
                                      Color.fromRGBO(197, 247, 80, 1.000),
                                  maximumSize: const Size(150, 50),
                                  foregroundColor:
                                      Color.fromRGBO(26, 32, 51, 1.000),
                                ),
                                icon: Icon(Ionicons.enter),
                                onPressed: (() {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                    builder: ((context) {
                                      return Home();
                                    }),
                                  ));
                                }),
                                label: Text(
                                  "Retake",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "BebasNeue",
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(197, 247, 80, 1.000),
                                  alignment: Alignment.centerLeft,
                                  minimumSize: const Size(100, 50),
                                  elevation: 5,
                                  shadowColor:
                                      Color.fromRGBO(197, 247, 80, 1.000),
                                  maximumSize: const Size(150, 50),
                                  foregroundColor:
                                      Color.fromRGBO(26, 32, 51, 1.000),
                                ),
                                icon: Icon(Ionicons.exit),
                                onPressed: () {
                                  exit(0);
                                },
                                label: Text(
                                  "Exit",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "BebasNeue",
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      );
                    }));
              }),
              icon: Icon(
                Ionicons.exit,
                color: Color.fromRGBO(26, 32, 51, 1.000),
              ),
            )
          ],
          bottom: TabBar(tabs: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.question_answer,
                color: Color.fromRGBO(26, 32, 51, 1.000),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.question_answer,
                color: Color.fromRGBO(26, 32, 51, 1.000),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.question_answer,
                color: Color.fromRGBO(26, 32, 51, 1.000),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.question_answer,
                color: Color.fromRGBO(26, 32, 51, 1.000),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.question_answer,
                color: Color.fromRGBO(26, 32, 51, 1.000),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.question_answer,
                color: Color.fromRGBO(26, 32, 51, 1.000),
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Qus(
            Good_playerImage: "images/players/7.png",
            Bad_playerImage: "images/players/7b.png",
            numOfRightans: 2,
            answer_1: "Hazzard",
            answer_2: "Debruin",
            answer_3: "Walker",
            answer_4: "Gündogan",
          ),
          Qus(
            Good_playerImage: "images/players/2.png",
            Bad_playerImage: "images/players/2b.png",
            numOfRightans: 2,
            answer_1: "Mani",
            answer_2: "Salah",
            answer_3: "Melner",
            answer_4: "Ahmad",
          ),
          Qus(
            Good_playerImage: "images/players/3.png",
            Bad_playerImage: "images/players/3b.png",
            numOfRightans: 1,
            answer_1: "Modric",
            answer_2: "Kroos",
            answer_3: "Casemiro",
            answer_4: "Benzema",
          ),
          Qus(
            Good_playerImage: "images/players/4.png",
            Bad_playerImage: "images/players/4b.png",
            numOfRightans: 4,
            answer_1: "Musiala",
            answer_2: "Müller",
            answer_3: "Goretzka",
            answer_4: "Kimmich",
          ),
          Qus(
            Good_playerImage: "images/players/5.png",
            Bad_playerImage: "images/players/5b.png",
            numOfRightans: 3,
            answer_1: "Bruno",
            answer_2: "Dalot",
            answer_3: "CR7",
            answer_4: "Antony",
          ),
          Qus(
            Good_playerImage: "images/players/8.png",
            Bad_playerImage: "images/players/8b.png",
            numOfRightans: 4,
            answer_1: "Militão",
            answer_2: "Díaz",
            answer_3: "Rodrygo",
            answer_4: "Vinícius",
          ),
        ]),
      ),
    );
  }
}
