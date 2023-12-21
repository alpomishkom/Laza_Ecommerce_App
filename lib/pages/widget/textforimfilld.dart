import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextfilldd extends StatelessWidget {
  final String? topText;
  final String? hintTexte;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const MyTextfilldd({
    super.key,
    this.hintTexte,
    this.prefixIcon,
    this.suffixIcon,
    this.topText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topText ?? '',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFF5F6FA),
            //  label: Text('Username'),
            hintText: hintTexte,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}