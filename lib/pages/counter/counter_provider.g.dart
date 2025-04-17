// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterNotifierHash() => r'a54fd64ee7e233c19458ab8fb2a80eff9fed5228';

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

abstract class _$CounterNotifier extends BuildlessAutoDisposeNotifier<int> {
  late final int initialValue;

  int build(
    int initialValue,
  );
}

/// See also [CounterNotifier].
@ProviderFor(CounterNotifier)
const counterNotifierProvider = CounterNotifierFamily();

/// See also [CounterNotifier].
class CounterNotifierFamily extends Family<int> {
  /// See also [CounterNotifier].
  const CounterNotifierFamily();

  /// See also [CounterNotifier].
  CounterNotifierProvider call(
    int initialValue,
  ) {
    return CounterNotifierProvider(
      initialValue,
    );
  }

  @override
  CounterNotifierProvider getProviderOverride(
    covariant CounterNotifierProvider provider,
  ) {
    return call(
      provider.initialValue,
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
  String? get name => r'counterNotifierProvider';
}

/// See also [CounterNotifier].
class CounterNotifierProvider
    extends AutoDisposeNotifierProviderImpl<CounterNotifier, int> {
  /// See also [CounterNotifier].
  CounterNotifierProvider(
    int initialValue,
  ) : this._internal(
          () => CounterNotifier()..initialValue = initialValue,
          from: counterNotifierProvider,
          name: r'counterNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$counterNotifierHash,
          dependencies: CounterNotifierFamily._dependencies,
          allTransitiveDependencies:
              CounterNotifierFamily._allTransitiveDependencies,
          initialValue: initialValue,
        );

  CounterNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialValue,
  }) : super.internal();

  final int initialValue;

  @override
  int runNotifierBuild(
    covariant CounterNotifier notifier,
  ) {
    return notifier.build(
      initialValue,
    );
  }

  @override
  Override overrideWith(CounterNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: CounterNotifierProvider._internal(
        () => create()..initialValue = initialValue,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initialValue: initialValue,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CounterNotifier, int> createElement() {
    return _CounterNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CounterNotifierProvider &&
        other.initialValue == initialValue;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialValue.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CounterNotifierRef on AutoDisposeNotifierProviderRef<int> {
  /// The parameter `initialValue` of this provider.
  int get initialValue;
}

class _CounterNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<CounterNotifier, int>
    with CounterNotifierRef {
  _CounterNotifierProviderElement(super.provider);

  @override
  int get initialValue => (origin as CounterNotifierProvider).initialValue;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
