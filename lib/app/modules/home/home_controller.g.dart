// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<HomeRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$randomBeerAtom = Atom(name: '_HomeControllerBase.randomBeer');

  @override
  BeerModel get randomBeer {
    _$randomBeerAtom.reportRead();
    return super.randomBeer;
  }

  @override
  set randomBeer(BeerModel value) {
    _$randomBeerAtom.reportWrite(value, super.randomBeer, () {
      super.randomBeer = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_HomeControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$getRandomBeerAsyncAction =
      AsyncAction('_HomeControllerBase.getRandomBeer');

  @override
  Future getRandomBeer() {
    return _$getRandomBeerAsyncAction.run(() => super.getRandomBeer());
  }

  @override
  String toString() {
    return '''
randomBeer: ${randomBeer},
isLoading: ${isLoading}
    ''';
  }
}
