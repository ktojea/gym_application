import 'package:flutter/material.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    required this.passwordController,
    required this.onChanged,
  });

  final TextEditingController passwordController;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
          counterText: '',
          prefixStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.mainColorDarkest,
            fontSize: 20,
            
          ),
          labelText: 'Пароль',
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.mainColorDark,
          ),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1000),
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: (_) => onChanged(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.mainColorDarkest,
          fontSize: 20,
        ),
        onTapOutside: (_) => FocusScope.of(context).requestFocus(FocusNode()));
  }
}
