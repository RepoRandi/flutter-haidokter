// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_main_navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientMainNavigationState {
  int get selectedIndex => throw _privateConstructorUsedError;
  set selectedIndex(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientMainNavigationStateCopyWith<PatientMainNavigationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientMainNavigationStateCopyWith<$Res> {
  factory $PatientMainNavigationStateCopyWith(PatientMainNavigationState value,
          $Res Function(PatientMainNavigationState) then) =
      _$PatientMainNavigationStateCopyWithImpl<$Res,
          PatientMainNavigationState>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class _$PatientMainNavigationStateCopyWithImpl<$Res,
        $Val extends PatientMainNavigationState>
    implements $PatientMainNavigationStateCopyWith<$Res> {
  _$PatientMainNavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientMainNavigationStateImplCopyWith<$Res>
    implements $PatientMainNavigationStateCopyWith<$Res> {
  factory _$$PatientMainNavigationStateImplCopyWith(
          _$PatientMainNavigationStateImpl value,
          $Res Function(_$PatientMainNavigationStateImpl) then) =
      __$$PatientMainNavigationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$PatientMainNavigationStateImplCopyWithImpl<$Res>
    extends _$PatientMainNavigationStateCopyWithImpl<$Res,
        _$PatientMainNavigationStateImpl>
    implements _$$PatientMainNavigationStateImplCopyWith<$Res> {
  __$$PatientMainNavigationStateImplCopyWithImpl(
      _$PatientMainNavigationStateImpl _value,
      $Res Function(_$PatientMainNavigationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$PatientMainNavigationStateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PatientMainNavigationStateImpl implements _PatientMainNavigationState {
  _$PatientMainNavigationStateImpl({this.selectedIndex = 0});

  @override
  @JsonKey()
  int selectedIndex;

  @override
  String toString() {
    return 'PatientMainNavigationState(selectedIndex: $selectedIndex)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientMainNavigationStateImplCopyWith<_$PatientMainNavigationStateImpl>
      get copyWith => __$$PatientMainNavigationStateImplCopyWithImpl<
          _$PatientMainNavigationStateImpl>(this, _$identity);
}

abstract class _PatientMainNavigationState
    implements PatientMainNavigationState {
  factory _PatientMainNavigationState({int selectedIndex}) =
      _$PatientMainNavigationStateImpl;

  @override
  int get selectedIndex;
  set selectedIndex(int value);
  @override
  @JsonKey(ignore: true)
  _$$PatientMainNavigationStateImplCopyWith<_$PatientMainNavigationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
