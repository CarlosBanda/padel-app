import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final Key fieldKey;
  final String hintText;
  final IconData icon;
  final TextInputType inputType;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;

  const CustomInputField({
    required this.fieldKey,
    required this.hintText,
    required this.icon,
    required this.inputType,
    this.obscureText = false,
    this.validator,
    this.onSaved,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: fieldKey,
      keyboardType: inputType,
      obscureText: obscureText,
      validator: validator,
      onSaved: onSaved,
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(icon),
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 12,
        ),
      ),
    );
  }
}
