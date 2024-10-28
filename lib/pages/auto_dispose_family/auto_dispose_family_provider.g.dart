// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_dispose_family_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterHash() => r'943610fd0f0a92f5a1db6b634ef2104fbccbb705';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [counter].
@ProviderFor(counter)
const counterProvider = CounterFamily();

/// See also [counter].
class CounterFamily extends Family<int> {
  /// See also [counter].
  const CounterFamily();

  /// See also [counter].
  CounterProvider call(
    Counter c,
  ) {
    return CounterProvider(
      c,
    );
  }

  @override
  CounterProvider getProviderOverride(
    covariant CounterProvider provider,
  ) {
    return call(
      provider.c,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'counterProvider';
}

/// See also [counter].
class CounterProvider extends AutoDisposeProvider<int> {
  /// See also [counter].
  CounterProvider(
    Counter c,
  ) : this._internal(
          (ref) => counter(
            ref as CounterRef,
            c,
          ),
          from: counterProvider,
          name: r'counterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$counterHash,
          dependencies: CounterFamily._dependencies,
          allTransitiveDependencies: CounterFamily._allTransitiveDependencies,
          c: c,
        );

  CounterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.c,
  }) : super.internal();

  final Counter c;

  @override
  Override overrideWith(
    int Function(CounterRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CounterProvider._internal(
        (ref) => create(ref as CounterRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        c: c,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<int> createElement() {
    return _CounterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CounterProvider && other.c == c;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, c.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CounterRef on AutoDisposeProviderRef<int> {
  /// The parameter `c` of this provider.
  Counter get c;
}

class _CounterProviderElement extends AutoDisposeProviderElement<int>
    with CounterRef {
  _CounterProviderElement(super.provider);

  @override
  Counter get c => (origin as CounterProvider).c;
}

String _$autoDisposeFamilyHelloHash() =>
    r'd90a576f5578d512fe40766ad05df688e34fb9e9';

/// See also [autoDisposeFamilyHello].
@ProviderFor(autoDisposeFamilyHello)
const autoDisposeFamilyHelloProvider = AutoDisposeFamilyHelloFamily();

/// See also [autoDisposeFamilyHello].
class AutoDisposeFamilyHelloFamily extends Family<Object?> {
  /// See also [autoDisposeFamilyHello].
  const AutoDisposeFamilyHelloFamily();

  /// See also [autoDisposeFamilyHello].
  AutoDisposeFamilyHelloProvider call(
    String nama,
  ) {
    return AutoDisposeFamilyHelloProvider(
      nama,
    );
  }

  @override
  AutoDisposeFamilyHelloProvider getProviderOverride(
    covariant AutoDisposeFamilyHelloProvider provider,
  ) {
    return call(
      provider.nama,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'autoDisposeFamilyHelloProvider';
}

/// See also [autoDisposeFamilyHello].
class AutoDisposeFamilyHelloProvider extends AutoDisposeProvider<Object?> {
  /// See also [autoDisposeFamilyHello].
  AutoDisposeFamilyHelloProvider(
    String nama,
  ) : this._internal(
          (ref) => autoDisposeFamilyHello(
            ref as AutoDisposeFamilyHelloRef,
            nama,
          ),
          from: autoDisposeFamilyHelloProvider,
          name: r'autoDisposeFamilyHelloProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$autoDisposeFamilyHelloHash,
          dependencies: AutoDisposeFamilyHelloFamily._dependencies,
          allTransitiveDependencies:
              AutoDisposeFamilyHelloFamily._allTransitiveDependencies,
          nama: nama,
        );

  AutoDisposeFamilyHelloProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.nama,
  }) : super.internal();

  final String nama;

  @override
  Override overrideWith(
    Object? Function(AutoDisposeFamilyHelloRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AutoDisposeFamilyHelloProvider._internal(
        (ref) => create(ref as AutoDisposeFamilyHelloRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        nama: nama,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Object?> createElement() {
    return _AutoDisposeFamilyHelloProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AutoDisposeFamilyHelloProvider && other.nama == nama;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, nama.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AutoDisposeFamilyHelloRef on AutoDisposeProviderRef<Object?> {
  /// The parameter `nama` of this provider.
  String get nama;
}

class _AutoDisposeFamilyHelloProviderElement
    extends AutoDisposeProviderElement<Object?> with AutoDisposeFamilyHelloRef {
  _AutoDisposeFamilyHelloProviderElement(super.provider);

  @override
  String get nama => (origin as AutoDisposeFamilyHelloProvider).nama;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
