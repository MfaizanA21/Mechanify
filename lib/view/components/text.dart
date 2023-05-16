import 'package:flutter/material.dart';


class TextInput extends StatelessWidget {
  const TextInput({
    key,
    required this.icon,
    required this.hint,
    required this.inputType,


  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600],
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: TextStyle(
            // Define your default text style here
            color: Colors.black,
            fontSize: 16,
          ),
          keyboardType: inputType,
        ),
      ),
    );
  }
}
