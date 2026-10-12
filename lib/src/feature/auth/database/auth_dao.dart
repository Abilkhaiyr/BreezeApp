import 'package:breeze_app/src/core/database/typed_preferences_dao.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IAuthDao {
  PreferencesEntry<String> get user;

  PreferencesEntry<String> get deviceToken;
}

class AuthDao extends TypedPreferencesDao implements IAuthDao {
  AuthDao({required SharedPreferencesWithCache sharedPreferences})
    : super(sharedPreferences, name: 'auth');

  @override
  PreferencesEntry<String> get user => stringEntry('user');

  @override
  PreferencesEntry<String> get deviceToken => stringEntry('deviceToken');
}
