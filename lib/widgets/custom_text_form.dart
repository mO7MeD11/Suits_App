import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.hint,
    this.controller,
    this.validator,
    required this.prefixIconicon,
    this.suffixicon,
    this.showText = true,
  });
  final String hint;
  final Icon prefixIconicon;
  final Widget? suffixicon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? showText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        obscureText: !showText!, //🤯
        controller: controller,
        validator: validator,

        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          hintStyle: TextStyle(color: Color(0xffA1A8B0)),
          hintText: hint,
          prefixIcon: prefixIconicon,
          suffixIcon: suffixicon,

          filled: true,
          fillColor: Color(0xffFFFFFF),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
