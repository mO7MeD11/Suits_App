import 'package:flutter/material.dart';

 

class CustomTextForm extends  StatelessWidget  {
  const CustomTextForm({
    super.key,
    required this.hint,
    required this.icon,
    this.controller,
    this.validator,
  });
  final String hint;
  final Icon icon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
 
   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        validator:  validator,
      
        
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText:  hint,
          prefixIcon: icon,
          filled: true,
          fillColor: Color(0xffF9FAFB),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 0, //
            ),
          ),
      
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
        ),
      ),
    );
  }
}
