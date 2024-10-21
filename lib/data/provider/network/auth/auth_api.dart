import 'package:dio/dio.dart';
import 'package:gym_application/data/models/remote/auth/dto/check_verification_code_register_dto/check_verification_code_register_dto.dart';
import 'package:gym_application/data/models/remote/auth/dto/login_dto/login_dto.dart';
import 'package:gym_application/data/models/remote/auth/dto/register_dto/register_dto.dart';
import 'package:gym_application/data/models/remote/auth/response/check_verification_code_response/check_verification_code_response.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  @POST('/auth/register')
  Future<HttpResponse<String>> registerUser(@Body() RegisterDTO registeDTO);

  @POST('/auth/check_verification_code_register')
  Future<HttpResponse<CheckVerificationCodeResponse>> checkVerificationCodeRegister(
    @Body() CheckVerificationCodeRegisterDTO checkVerificationCodeRegisterDTO,
  );

  @POST('/auth/login')
  Future<HttpResponse<CheckVerificationCodeResponse>> login(
    @Body() LoginDTO LoginDTO,
  );
}
