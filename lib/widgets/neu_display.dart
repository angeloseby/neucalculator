import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../logic/provider_model.dart';

class NeuDisplay extends StatelessWidget {
  const NeuDisplay({Key? key}) : super(key: key);
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
          ],
        ),
        child: Align(
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: AutoSizeText(
              Provider.of<ProviderModel>(context).expression,
              maxLines: 1,
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
