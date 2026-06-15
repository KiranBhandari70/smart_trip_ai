import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final String? labelText;
  final IconData? prefixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final IconData? prefixIconColor;
  final void Function(String)? onChanged;

  const CustomTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.labelText,
    this.prefixIcon,
    this.obscureText = false,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.textInputAction,
    this.onChanged,
    this.prefixIconColor,
  });

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      cursorColor: Theme.of(context).primaryColor,
      style: TextStyle(
        fontSize: 13,
      ),

      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onChanged: onChanged,

      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText ?? hintText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        prefixIconColor: Colors.green,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}