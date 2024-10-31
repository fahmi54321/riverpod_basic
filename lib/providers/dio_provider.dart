import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// todo 6 buat part provider, dengan mengetik 'riverpodPart'

part 'dio_provider.g.dart';

// todo 7 buat riverpod generator,dengan mengetik 'riverpod'
@riverpod
Dio dio(Ref ref) {
  return Dio(
    BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'),
  );
}

// todo 8 (next users_providers.dart)
