import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Qus extends StatefulWidget {
  Qus({
    required this.qus_text,
    required this.answer_1,
    required this.answer_2,
    required this.answer_3,
    required this.answer_4,
    required this.numOfRightans,
  });

  String? qus_text;
  String? answer_1;

  String? answer_2;

  String? answer_3;

  String? answer_4;
  int? numOfRightans;
  @override
  State<Qus> createState() => _QusState();
}

class _QusState extends State<Qus> {
  Color mycolor = Colors.grey;
  Color mycolor1 = Colors.grey;
  Color mycolor2 = Colors.grey;
  Color mycolor3 = Colors.grey;
  Color mycolor4 = Colors.grey;
  bool pressAttention1 = false;
  bool pressAttention2 = false;
  bool pressAttention3 = false;
  bool pressAttention4 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      width: 20,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("images/7062.jpg"))),
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.all(2),
            alignment: Alignment.center,
            constraints: BoxConstraints(maxHeight: 200, maxWidth: 60),
            decoration: BoxDecoration(),
            child: Text(
              textAlign: TextAlign.center,
              widget.qus_text.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: "Abyssinica",
                  color: Colors.yellow),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          alignment: Alignment.centerLeft,
                          minimumSize: const Size(160, 60),
                          elevation: 5,
                          shadowColor: Colors.white,
                          maximumSize: const Size(160, 60),
                          backgroundColor:
                              pressAttention1 ? mycolor1 : mycolor),
                      onPressed: (() {
                        setState(() {
                          if (widget.numOfRightans == 1)
                            mycolor1 = Colors.green;
                          else
                            (mycolor1 = Colors.red);
                          pressAttention1 = !pressAttention1;
                          print(pressAttention1);
                        });
                      }),
                      icon: FaIcon(FontAwesomeIcons.a),
                      label: Text(
                        textAlign: TextAlign.left,
                        widget.answer_1.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Abyssinica",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          alignment: Alignment.centerLeft,
                          minimumSize: const Size(160, 60),
                          elevation: 5,
                          shadowColor: Colors.white,
                          maximumSize: const Size(160, 60),
                          backgroundColor:
                              pressAttention2 ? mycolor2 : mycolor),
                      onPressed: (() {
                        setState(() {
                          if (widget.numOfRightans == 2)
                            mycolor2 = Colors.green;
                          else
                            (mycolor2 = Colors.red);
                          pressAttention2 = !pressAttention2;
                        });
                      }),
                      icon: FaIcon(FontAwesomeIcons.b),
                      label: Text(
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Abyssinica",
                        ),
                        widget.answer_2.toString(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          alignment: Alignment.centerLeft,
                          minimumSize: const Size(160, 60),
                          elevation: 5,
                          shadowColor: Colors.white,
                          maximumSize: const Size(160, 60),
                          backgroundColor:
                              pressAttention3 ? mycolor3 : mycolor),
                      onPressed: (() {
                        setState(() {
                          if (widget.numOfRightans == 3)
                            mycolor3 = Colors.green;
                          else
                            (mycolor3 = Colors.red);
                          pressAttention3 = !pressAttention3;
                        });
                      }),
                      icon: FaIcon(FontAwesomeIcons.c),
                      label: Text(
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Abyssinica",
                        ),
                        widget.answer_3.toString(),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          alignment: Alignment.centerLeft,
                          minimumSize: const Size(160, 60),
                          elevation: 5,
                          shadowColor: Colors.white,
                          maximumSize: const Size(160, 60),
                          backgroundColor:
                              pressAttention4 ? mycolor4 : mycolor),
                      onPressed: (() {
                        setState(() {
                          if (widget.numOfRightans == 4)
                            mycolor4 = Colors.green;
                          else
                            (mycolor4 = Colors.red);
                          pressAttention4 = !pressAttention4;
                        });
                      }),
                      icon: FaIcon(FontAwesomeIcons.d),
                      label: Text(
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Abyssinica",
                        ),
                        widget.answer_4.toString(),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
