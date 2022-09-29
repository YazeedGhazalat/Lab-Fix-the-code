import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'models/Quiz.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 52, 51, 51),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 250,
              image: AssetImage("images/2.jpg"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(150, 50),
                  elevation: 5,
                  shadowColor: Colors.white,
                  maximumSize: const Size(200, 50),
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
                    fontFamily: "Abyssinica",
                  ),
                ))
          ],
        )),
      ),
    );
  }
}
