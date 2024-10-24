import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/di/scopes/global/global_scope.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/data/models/remote/auth/dto/login_dto/login_dto.dart';
import 'package:gym_application/ui/features/login/login_model.dart';
import 'package:gym_application/ui/features/login/login_screen.dart';
import 'package:gym_application/ui/widgets/messages/error_message_widget.dart';

abstract interface class ILoginScreenWidgetModel implements IWidgetModel {
  ValueNotifier<bool> get loginButtonEnabledListenable;

  TextEditingController get phoneController;

  TextEditingController get passwordController;

  void onRegistrationTap();

  void onPhoneChanged();

  void onPasswordChanged();

  Future<void> onLoginButtonTap();
}

LoginScreenWidgetModel defaultLoginScreenWidgetModelFactory(BuildContext context) {
  return LoginScreenWidgetModel(
    LoginScreenModel(
      localStorageRepository: context.global.localStorageRepository,
      authRepository: context.global.authRepository,
    ),
  );
}

class LoginScreenWidgetModel extends WidgetModel<LoginScreen, ILoginScreenModel> implements ILoginScreenWidgetModel {
  LoginScreenWidgetModel(super.model);

  final _loginButtonEnabledListenable = ValueNotifier<bool>(false);

  @override
  ValueNotifier<bool> get loginButtonEnabledListenable => _loginButtonEnabledListenable;

  final _phoneController = TextEditingController();

  @override
  TextEditingController get phoneController => _phoneController;

  final _passwordController = TextEditingController();

  @override
  TextEditingController get passwordController => _passwordController;

  @override
  void onRegistrationTap() => context.router.push(const RegistrationRoute());

  @override
  void onPhoneChanged() => _validatePhoneAndPassword();

  @override
  void onPasswordChanged() => _validatePhoneAndPassword();

  @override
  Future<void> onLoginButtonTap() async {
    try {
      final loginDTO = LoginDTO(
        phoneNumber: _phoneController.text,
        password: _passwordController.text,
      );

      final response = await model.loginUser(loginDTO);

      final token = 'Bearer ${response.accessToken}';
      final userId = response.userId;

      await model.saveToken(token);
      await model.saveUserId(userId);

      _pushToMainScreen();
    } on DioException catch (e) {
      final errorText = e.response?.data['detail'];

      _showErrorMessage(errorText);
    } on Exception catch (e, stack) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: stack);
    }
  }

  void _pushToMainScreen() => context.router.replace(const UserScopeWrapperRoute());

  void _showErrorMessage(String text) => showDialog(
        context: context,
        builder: (context) => ErrorMessageWidget(text: text),
      );

  void _validatePhoneAndPassword() {
    if (_phoneController.text.length != 10 || _passwordController.text.length < 2) {
      _loginButtonEnabledListenable.value = false;
    } else {
      _loginButtonEnabledListenable.value = true;
    }
  }
}
