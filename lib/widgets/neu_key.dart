import 'package:flutter/material.dart';

class NeuKey extends StatefulWidget {
  const NeuKey({Key? key, required this.keytext}) : super(key: key);

  final String keytext;
  @override
  State<NeuKey> createState() => _NeuKeyState();
}

class _NeuKeyState extends State<NeuKey> {
  Color bottomShadow = Colors.grey.shade500;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          bottomShadow = Colors.grey.shade300;
        });
      },
      onTapUp: (details) {
        setState(() {
          bottomShadow = Colors.grey.shade500;
        });
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: bottomShadow,
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
        child: Center(
          child: Text(
            widget.keytext,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
