import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'models/Quiz.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Ionicons.game_controller,
          color: Color.fromRGBO(26, 32, 51, 1.000),
        ),
        title: Text(
          "Ultimate Team Quiz",
          style: TextStyle(
            fontFamily: "BebasNeue",
            fontStyle: FontStyle.italic,
            color: Color.fromRGBO(26, 32, 51, 1.000),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(197, 247, 80, 1.000),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(26, 32, 51, 1.000),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 250,
              image: AssetImage("images/cover-fifa-22.png"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(197, 247, 80, 1.000),
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(150, 50),
                  elevation: 5,
                  shadowColor: Color.fromRGBO(197, 247, 80, 1.000),
                  maximumSize: const Size(200, 50),
                  foregroundColor: Color.fromRGBO(26, 32, 51, 1.000),
                ),
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Quiz();
                  }));
                }),
                icon: Icon(Ionicons.play_circle),
                label: Text(
                  "Lets Play!",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "BebasNeue",
                    fontStyle: FontStyle.italic,
                  ),
                )),
          ],
        )),
      ),
    );
  }
}
