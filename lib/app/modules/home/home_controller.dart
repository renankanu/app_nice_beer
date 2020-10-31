import 'package:app_nice_beer/app/models/beer_model.dart';
import 'package:app_nice_beer/app/modules/home/repositories/home_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final HomeRepository repository;

  _HomeControllerBase(this.repository) {
    getRandomBeer();
  }

  @observable
  BeerModel randomBeer;

  @observable
  bool isLoading = false;

  @action
  getRandomBeer() async {
    isLoading = true;
    randomBeer = await repository.getRandomBeer();
    isLoading = false;
  }
}
