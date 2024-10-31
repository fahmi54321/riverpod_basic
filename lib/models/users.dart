// todo 1  import package
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// todo 2 buat part, bisa dengan mengetik 'ptf' dan 'pts'
part 'users.freezed.dart';
part 'users.g.dart';

// todo 3 buat model, dengan mengetik 'fdataclass'
@freezed
class User with _$User {
  const factory User({
    required int id,
    required String name,
    required String username,
    required String email,
    required String phone,
    required String website,
  }) = _User;

  // todo 4 buat convert ke json, dengan mengetik 'fromJson'

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// todo 5 (next dio_provider.dart)
