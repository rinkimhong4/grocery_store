import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final bool obscureText;
  final Widget? suffixIcon;

  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    this.prefixIcon,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Theme.of(context).colorScheme.primary,
      controller: widget.controller,
      keyboardType: widget.keyboardType,

      obscureText: widget.obscureText ? _obscureText : false,

      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.grey[200],
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.grey),

        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey[700],
                ),
                onPressed: _togglePasswordVisibility,
              )
            : widget.suffixIcon,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 24,
        ),

        prefixIcon: widget.prefixIcon != null
            ? Icon(widget.prefixIcon, color: Colors.grey[700])
            : null,

        suffixIconConstraints: const BoxConstraints(
          maxHeight: 40,
          maxWidth: 40,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1.4,
          ),
        ),
      ),
    );
  }
}
