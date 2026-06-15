import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {

    return TextField(

      decoration: InputDecoration(

        hintText: hintText,

        prefixIcon: Icon(
          prefixIcon,
          color: Colors.grey,
        ),

        suffixIcon: suffixIcon != null
            ? Icon(
          suffixIcon,
          color: Colors.grey,
        )
            : null,

        filled: true,

        fillColor: Colors.white,

        border: OutlineInputBorder(

          borderRadius:
          BorderRadius.circular(30),

          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}