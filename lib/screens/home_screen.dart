import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade800,
      appBar: AppBar(
        title: const Text('Dice App'),
        centerTitle: true,
        backgroundColor: Colors.cyan.shade900,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeDiceFace();
                  });
                  print('clicked pressed = $leftDiceNumber');
                },
                child: Image.asset('assets/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        changeDiceFace();
                      });
                      print('pressd $rightDiceNumber');
                    },
                    child: Image.asset('assets/dice$rightDiceNumber.png'))),
          ],
        ),
      ),
    );
  }
}
