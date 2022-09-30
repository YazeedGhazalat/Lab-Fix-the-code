import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Qus extends StatefulWidget {
  Qus({
    required this.answer_1,
    required this.answer_2,
    required this.answer_3,
    required this.answer_4,
    required this.numOfRightans,
    required this.Good_playerImage,
    required this.Bad_playerImage,
  });

  String qus_text = "Who am I ?";
  String? answer_1;

  String? answer_2;

  String? answer_3;
  String? Good_playerImage;
  String? Bad_playerImage;
  String? answer_4;
  int? numOfRightans;

  @override
  State<Qus> createState() => _QusState();
}

class _QusState extends State<Qus> {
  Color mycolor = Color.fromARGB(255, 24, 0, 112);
  Color mycolor1 = Color.fromARGB(255, 93, 93, 93);
  Color mycolor2 = Color.fromARGB(255, 93, 93, 93);
  Color mycolor3 = Color.fromARGB(255, 93, 93, 93);
  Color mycolor4 = Color.fromARGB(255, 93, 93, 93);
  bool pressAttention1 = false;
  bool pressAttention2 = false;
  bool pressAttention3 = false;
  bool pressAttention4 = false;
  late String playerImage = widget.Bad_playerImage.toString();
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
          Image(image: AssetImage(playerImage), height: 300),
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            height: 100,
            width: 90,
            padding: EdgeInsets.all(8),
            constraints: BoxConstraints(maxHeight: 200, maxWidth: 60),
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
                  fontSize: 40,
                  fontFamily: "Abyssinica",
                  color: Colors.white),
            ),
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
                          if (widget.numOfRightans == 1) {
                            mycolor1 = Colors.green;
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: Image(
                                        image: AssetImage(widget
                                            .Good_playerImage.toString())),
                                  );
                                });
                          } else {
                            mycolor1 = Colors.red;
                          }
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
                          if (widget.numOfRightans == 2) {
                            mycolor2 = Colors.green;
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: Image(
                                        image: AssetImage(widget
                                            .Good_playerImage.toString())),
                                  );
                                });
                          } else {
                            mycolor2 = Colors.red;
                          }
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
                          if (widget.numOfRightans == 3) {
                            mycolor3 = Colors.green;
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: Image(
                                        image: AssetImage(widget
                                            .Good_playerImage.toString())),
                                  );
                                });
                          } else {
                            mycolor3 = Colors.red;
                          }
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
                          if (widget.numOfRightans == 4) {
                            mycolor4 = Colors.green;
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: Image(
                                        image: AssetImage(widget
                                            .Good_playerImage.toString())),
                                  );
                                });
                          } else {
                            mycolor4 = Colors.red;
                          }
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
