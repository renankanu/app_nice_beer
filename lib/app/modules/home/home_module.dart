import 'package:app_nice_beer/app/modules/home/home_controller.dart';
import 'package:app_nice_beer/app/modules/home/repositories/home_repository.dart';
import 'package:dio/native_imp.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $HomeController,
        $HomeRepository,
        Bind((i) => DioForNative()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
