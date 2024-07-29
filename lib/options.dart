import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final String optionText;
  const Options(this.optionText, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Text(optionText,
            style: const TextStyle(
              fontSize: 25,
            )));
  }
}
