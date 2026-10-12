import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:breeze_app/src/feature/auth/bloc/auth_remote_ds.dart';
import 'package:breeze_app/src/feature/auth/database/auth_dao.dart';
import 'package:breeze_app/src/feature/auth/models/user_dto.dart';

abstract interface class IAuthRepository {
  bool get isAuthenticated;

  UserDTO? get user;

  Future<void> clearUser();

  // UserDTO? cacheUser();

  Future<UserDTO> login({
    required String phone,
    required String password,
    String? deviceType,
  });

  Future<UserDTO> updateToken({String? deviceType});

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

  // // Future<String> forgotPassword({
  // //   required String email,
  // // });

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

  // Future newPassword({
  //   required String password,
  //   required String passwordConfirmation,
  //   required String token,
  // });

  Future<List<Map<String, dynamic>>> getForceUpdateVersion();
}

class AuthRepositoryImpl implements IAuthRepository {
  const AuthRepositoryImpl({
    required IAuthRemoteDS remoteDS,
    required IAuthDao authDao,
  }) : _remoteDS = remoteDS,
       _authDao = authDao;
  final IAuthRemoteDS _remoteDS;
  final IAuthDao _authDao;

  @override
  Future<void> clearUser() => _authDao.user.remove();

  @override
  bool get isAuthenticated => _authDao.user.value != null;

  @override
  Future<List<Map<String, dynamic>>> getForceUpdateVersion() async {
    return [
      {'key': 'force_update_version', 'value': '1.0.0'},
      {'key': 'store_review_version', 'value': '1.0.0'},
    ];
  }

  @override
  Future<UserDTO> login({
    required String phone,
    required String password,
    String? deviceType,
  }) async {
    final String? deviceToken = _authDao.deviceToken.value;
    // log('${_authDao.deviceToken.value}', name: 'auth repo device token');

    try {
      final user = await _remoteDS.login(
        phone: phone,
        password: password,
        deviceToken: deviceToken,
        deviceType: deviceType,
      );

      await _authDao.user.setValue(jsonEncode(user.toJson()));
      log('$user', name: 'auth-repo');
      return user;
    } catch (e) {
      rethrow;
    }
  }

  @override
  UserDTO? get user {
    try {
      final userStr = _authDao.user.value;
      if (userStr != null) {
        // log(userStr, name: 'user in auth repo');
        return UserDTO.fromJson(jsonDecode(userStr) as Map<String, dynamic>);
      } else {
        return null;
      }
    } catch (e) {
      return null;
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
  //   final String? dv = _authDao.deviceToken.value;
  //   try {
  //     final user = await _remoteDS.register(
  //       name: name,
  //       phone: phone,
  //       companyName: companyName,
  //       type: type,
  //       cityId: cityId,
  //       role: role,
  //       password: password,
  //       deviceToken: dv,
  //       idCard: idCard,
  //       deviceType: deviceType,
  //     );

  //     await _authDao.user.setValue(jsonEncode(user.toJson()));

  //     return user;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // @override
  // Future sendPhoneNumber({required String phone}) async {
  //   try {
  //     return await _remoteDS.sendPhoneNumber(phone: phone);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // @override
  // Future<BasicResponse> checkCode({
  //   required String code,
  //   required String phone,
  // }) async {
  //   try {
  //     return await _remoteDS.checkCode(phone: phone, code: code);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // @override
  // Future<BasicResponse> checkResetCode({
  //   required String code,
  //   required String phone,
  // }) async {
  //   try {
  //     return await _remoteDS.checkResetCode(code: code, phone: phone);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // @override
  // Future forgetPassword({required String phone}) async {
  //   try {
  //     return await _remoteDS.forgetPassword(phone: phone);
  //   } catch (e) {
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
  //     return await _remoteDS.newPassword(
  //       phone: phone,
  //       password: password,
  //       passwordConfirmation: passwordConfirmation,
  //       code: code,
  //     );
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  @override
  Future<UserDTO> updateToken({String? deviceType}) async {
    final String? deviceToken = _authDao.deviceToken.value;
    final dt = Platform.isAndroid ? 'Android' : 'IOS';
    // log('${_authDao.deviceToken.value}', name: 'auth repo device token');

    try {
      final user = await _remoteDS.updateToken(
        deviceToken: deviceToken,
        deviceType: dt,
      );

      // await _authDao.user.setValue(jsonEncode(user.toJson()));
      // log('$user', name: 'auth-repo');
      return user;
    } catch (e) {
      rethrow;
    }
  }

  // @override
  // Future<AppVersionDTO> appVersion() => _remoteDS.appVersion();
}
