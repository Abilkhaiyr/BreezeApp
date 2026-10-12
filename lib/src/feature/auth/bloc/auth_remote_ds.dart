import 'package:breeze_app/src/core/rest_client/rest_client.dart';
import 'package:breeze_app/src/core/utils/talker_logger_util.dart';
import 'package:breeze_app/src/feature/auth/models/user_dto.dart';

abstract interface class IAuthRemoteDS {
  Future<UserDTO> login({
    required String phone,
    required String password,
    String? deviceToken,
    String? deviceType,
  });
  Future<UserDTO> updateToken({String? deviceToken, String? deviceType});

  // Future<AppVersionDTO> appVersion();

  // Future sendPhoneNumber({required String phone});

  // Future<UserDTO> register({
  //   required String name,
  //   required String phone,
  //   required String companyName,
  //   required String type,
  //   required String role,
  //   required int cityId,
  //   required String password,
  //   List<File>? idCard,
  //   String? deviceToken,
  //   String? deviceType,
  // });

  // Future<BasicResponse> checkCode({
  //   required String code,
  //   required String phone,
  // });

  // Future forgetPassword({required String phone});

  // Future<BasicResponse> checkResetCode({
  //   required String code,
  //   required String phone,
  // });

  // Future<BasicResponse> newPassword({
  //   required String phone,
  //   required String password,
  //   required String passwordConfirmation,
  //   required String code,
  // });
}

class AuthRemoteDSImpl implements IAuthRemoteDS {
  const AuthRemoteDSImpl({required this.restClient});
  final IRestClient restClient;

  @override
  Future<UserDTO> login({
    required String phone,
    required String password,
    String? deviceToken,
    String? deviceType,
  }) async {
    try {
      final Map<String, dynamic> response = await restClient.post(
        'auth/login',
        body: {
          'phone': phone,
          'password': password,
          if (deviceToken != null) 'device_token': deviceToken,
          if (deviceType != null) 'device_type': deviceType,
        },
      );
      return UserDTO.fromJson(response);
    } catch (e, st) {
      TalkerLoggerUtil.talker.error('#login - $e', e, st);
      rethrow;
    }
  }

  // @override
  // Future<UserDTO> register({
  //   required String name,
  //   required String phone,
  //   required String companyName,
  //   required String type,
  //   required String role,
  //   required int cityId,
  //   required String password,
  //   List<File>? idCard,
  //   String? deviceToken,
  //   String? deviceType,
  // }) async {
  //   try {
  //     final formData = FormData.fromMap({
  //       'name': name,
  //       'phone': phone,
  //       'company_name': companyName,
  //       'type': type,
  //       'role': role,
  //       'password': password,
  //       'city_id': cityId,
  //       if (deviceToken != null) 'device_token': deviceToken,
  //       if (deviceType != null) 'device_type': deviceType,
  //     });

  //     // Backend marks id_card as nullable, so registration intentionally
  //     // does not send id_card[] from the app.

  //     final Map<String, dynamic> response = await restClient.post(
  //       'auth/register',
  //       body: formData,
  //     );

  //     return UserDTO.fromJson(response);
  //   } catch (e, st) {
  //     TalkerLoggerUtil.talker.error('#register - $e', e, st);
  //     rethrow;
  //   }
  // }

  // @override
  // Future<BasicResponse> checkResetCode({
  //   required String code,
  //   required String phone,
  // }) async {
  //   try {
  //     final Map<String, dynamic> response = await restClient.post(
  //       '/reset/verify-reset-code',
  //       body: {'code': code, 'phone': phone},
  //     );

  //     return BasicResponse.fromJson(response);
  //   } catch (e, st) {
  //     TalkerLoggerUtil.talker.error('#checkResetCode - $e', e, st);
  //     rethrow;
  //   }
  // }

  // @override
  // Future<BasicResponse> newPassword({
  //   required String phone,
  //   required String password,
  //   required String passwordConfirmation,
  //   required String code,
  // }) async {
  //   try {
  //     final Map<String, dynamic> response = await restClient.post(
  //       '/reset/change-password',
  //       body: {
  //         'code': code,
  //         'phone': phone,
  //         'password': password,
  //         'password_confirmation': passwordConfirmation,
  //       },
  //     );

  //     return BasicResponse.fromJson(response);
  //   } catch (e, st) {
  //     TalkerLoggerUtil.talker.error('#checkResetCode - $e', e, st);
  //     rethrow;
  //   }
  // }

  // @override
  // Future forgetPassword({required String phone}) async {
  //   try {
  //     final Map<String, dynamic> response = await restClient.post(
  //       '/reset/reset-password',
  //       body: {'phone': phone},
  //     );

  //     return response;
  //   } catch (e, st) {
  //     TalkerLoggerUtil.talker.error('#forgetPassword - $e', e, st);
  //     rethrow;
  //   }
  // }

  @override
  Future<UserDTO> updateToken({String? deviceToken, String? deviceType}) async {
    try {
      final Map<String, dynamic> response = await restClient.post(
        'auth/update-token',
        body: {
          if (deviceToken != null) 'device_token': deviceToken,
          if (deviceType != null) 'device_type': deviceType,
        },
      );
      return UserDTO.fromJson(response);
    } catch (e, st) {
      TalkerLoggerUtil.talker.error('#updateToken - $e', e, st);
      rethrow;
    }
  }

  // @override
  // Future<AppVersionDTO> appVersion() async {
  //   try {
  //     final Map<String, dynamic> response = await restClient.get(
  //       '/app-version',
  //       queryParams: {},
  //       returnFullData: true,
  //     );

  //     return AppVersionDTO.fromJson(response);
  //   } catch (e, st) {
  //     TalkerLoggerUtil.talker.error('#appVersion - $e', e, st);
  //     rethrow;
  //   }
  // }
}
