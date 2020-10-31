import 'package:app_nice_beer/app/models/beer_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class IHomeRepository implements Disposable {
  Future<BeerModel> getRandomBeer();
}
