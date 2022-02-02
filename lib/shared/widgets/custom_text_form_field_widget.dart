import 'package:flutter/material.dart';


class CustomTextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final TextInputType keyboardType;
  final bool obscureText;


  const CustomTextFormFieldWidget({Key? key ,
    required this.controller ,
    required this.hintText ,
    required this.keyboardType,
    required this.obscureText

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
        ),
      ),
    );
  }
}
