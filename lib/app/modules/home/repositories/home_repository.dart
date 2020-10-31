import 'package:app_nice_beer/app/models/beer_model.dart';
import 'package:app_nice_beer/app/utils/app.dart';
import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'interfaces/home_repository_interface.dart';

part 'home_repository.g.dart';

@Injectable()
class HomeRepository implements IHomeRepository {
  final DioForNative client;

  HomeRepository(this.client);

  @override
  void dispose() {}

  @override
  Future<BeerModel> getRandomBeer() async {
    try {
      final response =
          await client.get('https://api.punkapi.com/v2/beers/random');
      return BeerModel.fromJson(response.data[0]);
    } on DioError catch (e) {
      throw Exception(e);
    }
  }

  // @override
  // Future<BeerModel> getRandomBeer() async {
  //   try {
  //     final response =
  //         await client.get('https://api.punkapi.com/v2/beers/random');
  //     print(response);
  //     return (response.data as List)
  //         .map((child) => BeerModel.fromJson(child))
  //         .toList();
  //   } on DioError catch (e) {
  //     throw Exception(e);
  //   }
  // }
}
