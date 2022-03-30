import 'package:flutter/material.dart';
import 'package:neucalculator/widgets/neu_display.dart';
import 'package:neucalculator/widgets/neu_keypad.dart';
import 'package:neucalculator/widgets/neu_settings.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text = "0";
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: [
              Column(
                children: [
                  NeuDisplay(
                    textop: text,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const NeuKeypad(),
                ],
              ),
              const Positioned(
                left: 0,
                top: 0,
                child: NeuSettings(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
