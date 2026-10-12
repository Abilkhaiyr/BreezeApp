// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppEvent()';
}


}

/// @nodoc
class $AppEventCopyWith<$Res>  {
$AppEventCopyWith(AppEvent _, $Res Function(AppEvent) __);
}


/// Adds pattern-matching-related methods to [AppEvent].
extension AppEventPatterns on AppEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CheckAuthEvent value)?  checkAuth,TResult Function( _LoginingEvent value)?  logining,TResult Function( _ExitingEvent value)?  exiting,TResult Function( _RefreshLocalEvent value)?  refreshLocal,TResult Function( _SendDeviceTokenEvent value)?  sendDeviceToken,TResult Function( _ChangeStateEvent value)?  changeState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckAuthEvent() when checkAuth != null:
return checkAuth(_that);case _LoginingEvent() when logining != null:
return logining(_that);case _ExitingEvent() when exiting != null:
return exiting(_that);case _RefreshLocalEvent() when refreshLocal != null:
return refreshLocal(_that);case _SendDeviceTokenEvent() when sendDeviceToken != null:
return sendDeviceToken(_that);case _ChangeStateEvent() when changeState != null:
return changeState(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CheckAuthEvent value)  checkAuth,required TResult Function( _LoginingEvent value)  logining,required TResult Function( _ExitingEvent value)  exiting,required TResult Function( _RefreshLocalEvent value)  refreshLocal,required TResult Function( _SendDeviceTokenEvent value)  sendDeviceToken,required TResult Function( _ChangeStateEvent value)  changeState,}){
final _that = this;
switch (_that) {
case _CheckAuthEvent():
return checkAuth(_that);case _LoginingEvent():
return logining(_that);case _ExitingEvent():
return exiting(_that);case _RefreshLocalEvent():
return refreshLocal(_that);case _SendDeviceTokenEvent():
return sendDeviceToken(_that);case _ChangeStateEvent():
return changeState(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CheckAuthEvent value)?  checkAuth,TResult? Function( _LoginingEvent value)?  logining,TResult? Function( _ExitingEvent value)?  exiting,TResult? Function( _RefreshLocalEvent value)?  refreshLocal,TResult? Function( _SendDeviceTokenEvent value)?  sendDeviceToken,TResult? Function( _ChangeStateEvent value)?  changeState,}){
final _that = this;
switch (_that) {
case _CheckAuthEvent() when checkAuth != null:
return checkAuth(_that);case _LoginingEvent() when logining != null:
return logining(_that);case _ExitingEvent() when exiting != null:
return exiting(_that);case _RefreshLocalEvent() when refreshLocal != null:
return refreshLocal(_that);case _SendDeviceTokenEvent() when sendDeviceToken != null:
return sendDeviceToken(_that);case _ChangeStateEvent() when changeState != null:
return changeState(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String version)?  checkAuth,TResult Function( UserDTO user)?  logining,TResult Function()?  exiting,TResult Function()?  refreshLocal,TResult Function()?  sendDeviceToken,TResult Function( AppState state)?  changeState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckAuthEvent() when checkAuth != null:
return checkAuth(_that.version);case _LoginingEvent() when logining != null:
return logining(_that.user);case _ExitingEvent() when exiting != null:
return exiting();case _RefreshLocalEvent() when refreshLocal != null:
return refreshLocal();case _SendDeviceTokenEvent() when sendDeviceToken != null:
return sendDeviceToken();case _ChangeStateEvent() when changeState != null:
return changeState(_that.state);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String version)  checkAuth,required TResult Function( UserDTO user)  logining,required TResult Function()  exiting,required TResult Function()  refreshLocal,required TResult Function()  sendDeviceToken,required TResult Function( AppState state)  changeState,}) {final _that = this;
switch (_that) {
case _CheckAuthEvent():
return checkAuth(_that.version);case _LoginingEvent():
return logining(_that.user);case _ExitingEvent():
return exiting();case _RefreshLocalEvent():
return refreshLocal();case _SendDeviceTokenEvent():
return sendDeviceToken();case _ChangeStateEvent():
return changeState(_that.state);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String version)?  checkAuth,TResult? Function( UserDTO user)?  logining,TResult? Function()?  exiting,TResult? Function()?  refreshLocal,TResult? Function()?  sendDeviceToken,TResult? Function( AppState state)?  changeState,}) {final _that = this;
switch (_that) {
case _CheckAuthEvent() when checkAuth != null:
return checkAuth(_that.version);case _LoginingEvent() when logining != null:
return logining(_that.user);case _ExitingEvent() when exiting != null:
return exiting();case _RefreshLocalEvent() when refreshLocal != null:
return refreshLocal();case _SendDeviceTokenEvent() when sendDeviceToken != null:
return sendDeviceToken();case _ChangeStateEvent() when changeState != null:
return changeState(_that.state);case _:
  return null;

}
}

}

/// @nodoc


class _CheckAuthEvent with DiagnosticableTreeMixin implements AppEvent {
  const _CheckAuthEvent({required this.version});
  

 final  String version;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckAuthEventCopyWith<_CheckAuthEvent> get copyWith => __$CheckAuthEventCopyWithImpl<_CheckAuthEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppEvent.checkAuth'))
    ..add(DiagnosticsProperty('version', version));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckAuthEvent&&(identical(other.version, version) || other.version == version));
}


@override
int get hashCode => Object.hash(runtimeType,version);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppEvent.checkAuth(version: $version)';
}


}

/// @nodoc
abstract mixin class _$CheckAuthEventCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory _$CheckAuthEventCopyWith(_CheckAuthEvent value, $Res Function(_CheckAuthEvent) _then) = __$CheckAuthEventCopyWithImpl;
@useResult
$Res call({
 String version
});




}
/// @nodoc
class __$CheckAuthEventCopyWithImpl<$Res>
    implements _$CheckAuthEventCopyWith<$Res> {
  __$CheckAuthEventCopyWithImpl(this._self, this._then);

  final _CheckAuthEvent _self;
  final $Res Function(_CheckAuthEvent) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? version = null,}) {
  return _then(_CheckAuthEvent(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoginingEvent with DiagnosticableTreeMixin implements AppEvent {
  const _LoginingEvent({required this.user});
  

 final  UserDTO user;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginingEventCopyWith<_LoginingEvent> get copyWith => __$LoginingEventCopyWithImpl<_LoginingEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppEvent.logining'))
    ..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginingEvent&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppEvent.logining(user: $user)';
}


}

/// @nodoc
abstract mixin class _$LoginingEventCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory _$LoginingEventCopyWith(_LoginingEvent value, $Res Function(_LoginingEvent) _then) = __$LoginingEventCopyWithImpl;
@useResult
$Res call({
 UserDTO user
});


$UserDTOCopyWith<$Res> get user;

}
/// @nodoc
class __$LoginingEventCopyWithImpl<$Res>
    implements _$LoginingEventCopyWith<$Res> {
  __$LoginingEventCopyWithImpl(this._self, this._then);

  final _LoginingEvent _self;
  final $Res Function(_LoginingEvent) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_LoginingEvent(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDTO,
  ));
}

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDTOCopyWith<$Res> get user {
  
  return $UserDTOCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _ExitingEvent with DiagnosticableTreeMixin implements AppEvent {
  const _ExitingEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppEvent.exiting'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExitingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppEvent.exiting()';
}


}




/// @nodoc


class _RefreshLocalEvent with DiagnosticableTreeMixin implements AppEvent {
  const _RefreshLocalEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppEvent.refreshLocal'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshLocalEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppEvent.refreshLocal()';
}


}




/// @nodoc


class _SendDeviceTokenEvent with DiagnosticableTreeMixin implements AppEvent {
  const _SendDeviceTokenEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppEvent.sendDeviceToken'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendDeviceTokenEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppEvent.sendDeviceToken()';
}


}




/// @nodoc


class _ChangeStateEvent with DiagnosticableTreeMixin implements AppEvent {
  const _ChangeStateEvent({required this.state});
  

 final  AppState state;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeStateEventCopyWith<_ChangeStateEvent> get copyWith => __$ChangeStateEventCopyWithImpl<_ChangeStateEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppEvent.changeState'))
    ..add(DiagnosticsProperty('state', state));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeStateEvent&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppEvent.changeState(state: $state)';
}


}

/// @nodoc
abstract mixin class _$ChangeStateEventCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory _$ChangeStateEventCopyWith(_ChangeStateEvent value, $Res Function(_ChangeStateEvent) _then) = __$ChangeStateEventCopyWithImpl;
@useResult
$Res call({
 AppState state
});


$AppStateCopyWith<$Res> get state;

}
/// @nodoc
class __$ChangeStateEventCopyWithImpl<$Res>
    implements _$ChangeStateEventCopyWith<$Res> {
  __$ChangeStateEventCopyWithImpl(this._self, this._then);

  final _ChangeStateEvent _self;
  final $Res Function(_ChangeStateEvent) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(_ChangeStateEvent(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as AppState,
  ));
}

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppStateCopyWith<$Res> get state {
  
  return $AppStateCopyWith<$Res>(_self.state, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}

/// @nodoc
mixin _$AppState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppState()';
}


}

/// @nodoc
class $AppStateCopyWith<$Res>  {
$AppStateCopyWith(AppState _, $Res Function(AppState) __);
}


/// Adds pattern-matching-related methods to [AppState].
extension AppStatePatterns on AppState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadingAppState value)?  loading,TResult Function( _NotAuthorizedState value)?  notAuthorized,TResult Function( _InAppState value)?  inApp,TResult Function( _NotAvailableVersion value)?  notAvailableVersion,TResult Function( _ErrorAppState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadingAppState() when loading != null:
return loading(_that);case _NotAuthorizedState() when notAuthorized != null:
return notAuthorized(_that);case _InAppState() when inApp != null:
return inApp(_that);case _NotAvailableVersion() when notAvailableVersion != null:
return notAvailableVersion(_that);case _ErrorAppState() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadingAppState value)  loading,required TResult Function( _NotAuthorizedState value)  notAuthorized,required TResult Function( _InAppState value)  inApp,required TResult Function( _NotAvailableVersion value)  notAvailableVersion,required TResult Function( _ErrorAppState value)  error,}){
final _that = this;
switch (_that) {
case _LoadingAppState():
return loading(_that);case _NotAuthorizedState():
return notAuthorized(_that);case _InAppState():
return inApp(_that);case _NotAvailableVersion():
return notAvailableVersion(_that);case _ErrorAppState():
return error(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadingAppState value)?  loading,TResult? Function( _NotAuthorizedState value)?  notAuthorized,TResult? Function( _InAppState value)?  inApp,TResult? Function( _NotAvailableVersion value)?  notAvailableVersion,TResult? Function( _ErrorAppState value)?  error,}){
final _that = this;
switch (_that) {
case _LoadingAppState() when loading != null:
return loading(_that);case _NotAuthorizedState() when notAuthorized != null:
return notAuthorized(_that);case _InAppState() when inApp != null:
return inApp(_that);case _NotAvailableVersion() when notAvailableVersion != null:
return notAvailableVersion(_that);case _ErrorAppState() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  notAuthorized,TResult Function()?  inApp,TResult Function()?  notAvailableVersion,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadingAppState() when loading != null:
return loading();case _NotAuthorizedState() when notAuthorized != null:
return notAuthorized();case _InAppState() when inApp != null:
return inApp();case _NotAvailableVersion() when notAvailableVersion != null:
return notAvailableVersion();case _ErrorAppState() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  notAuthorized,required TResult Function()  inApp,required TResult Function()  notAvailableVersion,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _LoadingAppState():
return loading();case _NotAuthorizedState():
return notAuthorized();case _InAppState():
return inApp();case _NotAvailableVersion():
return notAvailableVersion();case _ErrorAppState():
return error(_that.message);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  notAuthorized,TResult? Function()?  inApp,TResult? Function()?  notAvailableVersion,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _LoadingAppState() when loading != null:
return loading();case _NotAuthorizedState() when notAuthorized != null:
return notAuthorized();case _InAppState() when inApp != null:
return inApp();case _NotAvailableVersion() when notAvailableVersion != null:
return notAvailableVersion();case _ErrorAppState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _LoadingAppState with DiagnosticableTreeMixin implements AppState {
  const _LoadingAppState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingAppState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppState.loading()';
}


}




/// @nodoc


class _NotAuthorizedState with DiagnosticableTreeMixin implements AppState {
  const _NotAuthorizedState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppState.notAuthorized'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotAuthorizedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppState.notAuthorized()';
}


}




/// @nodoc


class _InAppState with DiagnosticableTreeMixin implements AppState {
  const _InAppState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppState.inApp'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InAppState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppState.inApp()';
}


}




/// @nodoc


class _NotAvailableVersion with DiagnosticableTreeMixin implements AppState {
  const _NotAvailableVersion();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppState.notAvailableVersion'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotAvailableVersion);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppState.notAvailableVersion()';
}


}




/// @nodoc


class _ErrorAppState with DiagnosticableTreeMixin implements AppState {
  const _ErrorAppState({required this.message});
  

 final  String message;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorAppStateCopyWith<_ErrorAppState> get copyWith => __$ErrorAppStateCopyWithImpl<_ErrorAppState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppState.error'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorAppState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorAppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$ErrorAppStateCopyWith(_ErrorAppState value, $Res Function(_ErrorAppState) _then) = __$ErrorAppStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorAppStateCopyWithImpl<$Res>
    implements _$ErrorAppStateCopyWith<$Res> {
  __$ErrorAppStateCopyWithImpl(this._self, this._then);

  final _ErrorAppState _self;
  final $Res Function(_ErrorAppState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorAppState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
