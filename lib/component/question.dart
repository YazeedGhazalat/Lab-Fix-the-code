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
  Color mycolor = Color.fromARGB(255, 93, 93, 93);
  Color mycolor1 = Color.fromARGB(255, 93, 93, 93);
  Color mycolor2 = Color.fromARGB(255, 93, 93, 93);
  Color mycolor3 = Color.fromARGB(255, 93, 93, 93);
  Color mycolor4 = Color.fromARGB(255, 93, 93, 93);
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
            height: 40,
          ),
          Container(
            margin: EdgeInsets.all(40),
            alignment: Alignment.center,
            height: 150,
            width: 90,
            padding: EdgeInsets.all(8),
            constraints: BoxConstraints(maxHeight: 200, maxWidth: 60),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
                border: Border.all(width: 5.0, color: Colors.black12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 8,
                  ),
                ],
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 28, 5, 179).withOpacity(0.7),
                    Color.fromARGB(255, 21, 0, 255).withOpacity(0.7),
                    Color.fromARGB(255, 136, 188, 255).withOpacity(0.7),
                  ],
                )),
            child: Text(
              textAlign: TextAlign.center,
              widget.qus_text.toString(),
              style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(3.0, 3.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: "Abyssinica",
                  color: Colors.white),
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
                          fontWeight: FontWeight.w100,
                          fontSize: 22,
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
                          fontWeight: FontWeight.w100,
                          fontSize: 22,
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
                          fontWeight: FontWeight.w100,
                          fontSize: 22,
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
                          fontWeight: FontWeight.w100,
                          fontSize: 22,
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
