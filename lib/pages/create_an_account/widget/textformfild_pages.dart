import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFildPages extends StatelessWidget {
 final  String hintText;
 final  Widget label;
  const TextFormFildPages({
    super.key, required this.hintText, required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          label: label,
        ),
      ),
    );
  }
}
