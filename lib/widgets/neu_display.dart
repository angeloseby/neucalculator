import 'package:flutter/material.dart';

class NeuDisplay extends StatelessWidget {
  const NeuDisplay({Key? key, required this.textop}) : super(key: key);

  final String textop;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
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
        child: Align(
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              textop,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 38,
              ),
            ),
          ),
          alignment: Alignment.centerRight,
        ),
      ),
    );
  }
}
