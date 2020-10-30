import 'package:app_nice_beer/app/models/beer_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'beer_repository.g.dart';

@Injectable()
class BeerRepository extends Disposable {
  final Dio _dio;

  BeerRepository(this._dio);

  String baseUrl = 'https://disease.sh/v3/covid-19';

  Future<BeerModel> getRandomBeer() async {
    try {
      Response response = await _dio.get('$baseUrl/all');
      return BeerModel.fromJson(response.data);
    } on DioError catch (e) {
      throw Exception(e);
    }
  }

  @override
  void dispose() {}
}
