// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatDetails _$StatDetailsFromJson(Map<String, dynamic> json) {
  return _StatDetails.fromJson(json);
}

/// @nodoc
mixin _$StatDetails {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatDetailsCopyWith<StatDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatDetailsCopyWith<$Res> {
  factory $StatDetailsCopyWith(
          StatDetails value, $Res Function(StatDetails) then) =
      _$StatDetailsCopyWithImpl<$Res, StatDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name, @JsonKey(name: 'url') String url});
}

/// @nodoc
class _$StatDetailsCopyWithImpl<$Res, $Val extends StatDetails>
    implements $StatDetailsCopyWith<$Res> {
  _$StatDetailsCopyWithImpl(this._value, this._then);

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
abstract class _$$_StatDetailsCopyWith<$Res>
    implements $StatDetailsCopyWith<$Res> {
  factory _$$_StatDetailsCopyWith(
          _$_StatDetails value, $Res Function(_$_StatDetails) then) =
      __$$_StatDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name, @JsonKey(name: 'url') String url});
}

/// @nodoc
class __$$_StatDetailsCopyWithImpl<$Res>
    extends _$StatDetailsCopyWithImpl<$Res, _$_StatDetails>
    implements _$$_StatDetailsCopyWith<$Res> {
  __$$_StatDetailsCopyWithImpl(
      _$_StatDetails _value, $Res Function(_$_StatDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_StatDetails(
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
class _$_StatDetails implements _StatDetails {
  _$_StatDetails(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'url') required this.url});

  factory _$_StatDetails.fromJson(Map<String, dynamic> json) =>
      _$$_StatDetailsFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  String toString() {
    return 'StatDetails(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatDetails &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatDetailsCopyWith<_$_StatDetails> get copyWith =>
      __$$_StatDetailsCopyWithImpl<_$_StatDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatDetailsToJson(
      this,
    );
  }
}

abstract class _StatDetails implements StatDetails {
  factory _StatDetails(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'url') required final String url}) = _$_StatDetails;

  factory _StatDetails.fromJson(Map<String, dynamic> json) =
      _$_StatDetails.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_StatDetailsCopyWith<_$_StatDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
