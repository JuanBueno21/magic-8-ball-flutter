import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: AskMe(),
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text(
              "Ask Me Anything",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue.shade800,
          ),
        ),
      ),
    );

class AskMe extends StatefulWidget {
  const AskMe({Key? key}) : super(key: key);

  @override
  State<AskMe> createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  int ballNumber = 1;

  void changeTheState() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeTheState();

                },
              child: Image.asset("images/ball$ballNumber.png"),

            ),
          ),
        ],
      ),
    );
  }
}