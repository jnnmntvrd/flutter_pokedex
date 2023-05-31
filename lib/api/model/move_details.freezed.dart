// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoveDetails _$MoveDetailsFromJson(Map<String, dynamic> json) {
  return _MoveDetails.fromJson(json);
}

/// @nodoc
mixin _$MoveDetails {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveDetailsCopyWith<MoveDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveDetailsCopyWith<$Res> {
  factory $MoveDetailsCopyWith(
          MoveDetails value, $Res Function(MoveDetails) then) =
      _$MoveDetailsCopyWithImpl<$Res, MoveDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name, @JsonKey(name: 'url') String url});
}

/// @nodoc
class _$MoveDetailsCopyWithImpl<$Res, $Val extends MoveDetails>
    implements $MoveDetailsCopyWith<$Res> {
  _$MoveDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MoveDetailsCopyWith<$Res>
    implements $MoveDetailsCopyWith<$Res> {
  factory _$$_MoveDetailsCopyWith(
          _$_MoveDetails value, $Res Function(_$_MoveDetails) then) =
      __$$_MoveDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name, @JsonKey(name: 'url') String url});
}

/// @nodoc
class __$$_MoveDetailsCopyWithImpl<$Res>
    extends _$MoveDetailsCopyWithImpl<$Res, _$_MoveDetails>
    implements _$$_MoveDetailsCopyWith<$Res> {
  __$$_MoveDetailsCopyWithImpl(
      _$_MoveDetails _value, $Res Function(_$_MoveDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_MoveDetails(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoveDetails implements _MoveDetails {
  _$_MoveDetails(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'url') required this.url});

  factory _$_MoveDetails.fromJson(Map<String, dynamic> json) =>
      _$$_MoveDetailsFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  String toString() {
    return 'MoveDetails(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoveDetails &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoveDetailsCopyWith<_$_MoveDetails> get copyWith =>
      __$$_MoveDetailsCopyWithImpl<_$_MoveDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoveDetailsToJson(
      this,
    );
  }
}

abstract class _MoveDetails implements MoveDetails {
  factory _MoveDetails(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'url') required final String url}) = _$_MoveDetails;

  factory _MoveDetails.fromJson(Map<String, dynamic> json) =
      _$_MoveDetails.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_MoveDetailsCopyWith<_$_MoveDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
