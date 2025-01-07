import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({
    super.key,
    required this.phoneController,
    required this.onChanged,
  });

  final TextEditingController phoneController;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    //TODO Добавить общий стиль
    //TODO Добавить тень
    return TextField(
        controller: phoneController,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
          counterText: '',
          prefixText: '+7',
          prefixStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.mainColorDarkest,
            fontSize: 20,
          ),
          labelText: 'Номер телефона',
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
        maxLength: 10,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.mainColorDarkest,
          fontSize: 20,
        ),
        onTapOutside: (_) => FocusScope.of(context).requestFocus(FocusNode()));
  }
}
