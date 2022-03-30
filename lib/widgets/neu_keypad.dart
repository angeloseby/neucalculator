import 'package:flutter/material.dart';
import 'package:neucalculator/neu_widgets/neu_key.dart';

class NeuKeypad extends StatelessWidget {
  const NeuKeypad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: const Offset(5, 5),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-5, -5),
                blurRadius: 15,
                spreadRadius: 1,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  NeuKey(keytext: "C"),
                  NeuKey(keytext: "%"),
                  NeuKey(keytext: "CE"),
                  NeuKey(keytext: "÷"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  NeuKey(keytext: "7"),
                  NeuKey(keytext: "8"),
                  NeuKey(keytext: "9"),
                  NeuKey(keytext: "×"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  NeuKey(keytext: "4"),
                  NeuKey(keytext: "5"),
                  NeuKey(keytext: "6"),
                  NeuKey(keytext: "-"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  NeuKey(keytext: "1"),
                  NeuKey(keytext: "2"),
                  NeuKey(keytext: "3"),
                  NeuKey(keytext: "+"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  NeuKey(keytext: "00"),
                  NeuKey(keytext: "0"),
                  NeuKey(keytext: "."),
                  NeuKey(keytext: "="),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
