import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/ui/features/login/login_wm.dart';
import 'package:gym_application/ui/features/login/widgets/password_text_field.dart';
import 'package:gym_application/ui/features/login/widgets/phone_text_field.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';

@RoutePage()
class LoginScreen extends ElementaryWidget<ILoginScreenWidgetModel> {
  const LoginScreen({super.key}) : super(defaultLoginScreenWidgetModelFactory);

  @override
  Widget build(ILoginScreenWidgetModel wm) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              PhoneTextField(
                phoneController: wm.phoneController,
                onChanged: () => wm.onPhoneChanged(),
              ),
              const SizedBox(height: 10),
              PasswordTextField(
                passwordController: wm.passwordController,
                onChanged: () => wm.onPasswordChanged(),
              ),
              const SizedBox(height: 10),
              ValueListenableBuilder(
                valueListenable: wm.loginButtonEnabledListenable,
                builder: (_, loginButtonEnabled, __) => ElevatedButton(
                  onPressed: loginButtonEnabled ? () => wm.onLoginButtonTap() : null,
                  child: const Text('Войти'),
                ),
              ),
              TextButton(
                onPressed: () => wm.onRegistrationTap(),
                child: const Text('Регистрация'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
