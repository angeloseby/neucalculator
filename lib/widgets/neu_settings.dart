import 'package:flutter/material.dart';

class NeuSettings extends StatefulWidget {
  const NeuSettings({Key? key}) : super(key: key);

  @override
  State<NeuSettings> createState() => _NeuSettingsState();
}

class _NeuSettingsState extends State<NeuSettings> {
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
        child: const Icon(
          Icons.settings,
          size: 30,
        ),
      ),
    );
  }
}
