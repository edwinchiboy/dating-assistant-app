import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dating_assitant_app/commons/utils/colors.dart';

class AuthTextFormField extends StatelessWidget {
  final double? width;
  final String? hintText;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;

  const AuthTextFormField({
    super.key,
    this.width,
    this.hintText,
    this.controller,
    this.inputFormatters,
    this.keyboardType,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        controller: controller,
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        cursorColor: ProjectColors.pink,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(color: ProjectColors.black, fontWeight: FontWeight.w300),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ProjectColors.pink),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ProjectColors.pink),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade900),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
    );
  }
}
