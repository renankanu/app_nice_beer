import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Observer(builder: (_) {
          return Container(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: controller.isLoading
                    ? Center(
                        child: Text('Loading ...'),
                      )
                    : SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 20),
                            Text(
                              'Beer of today',
                              style: TextStyle(fontSize: 32),
                            ),
                            Center(
                              child: controller.randomBeer.imageUrl != null
                                  ? Image.network(
                                      controller.randomBeer.imageUrl,
                                      height: 280,
                                    )
                                  : Image.asset(
                                      'assets/icons/no_beer.png',
                                      height: 280,
                                    ),
                            ),
                            Text('Name: ${controller.randomBeer.name}'),
                            Text('Tagline: ${controller.randomBeer.tagline}'),
                            Text(controller.randomBeer.description),
                            GestureDetector(
                              onTap: () {
                                controller.getRandomBeer();
                              },
                              child: Text('Click me'),
                            )
                          ],
                        ),
                      )),
          );
        }),
      ),
    );
  }
}
