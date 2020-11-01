import 'package:app_nice_beer/app/modules/home/widgets/rich_text_custom.dart';
import 'package:app_nice_beer/app/utils/custom_colors.dart';
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
    final width = MediaQuery.of(context).size.width;
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
                            SizedBox(height: 20),
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
                            SizedBox(height: 20),
                            Text('Name: ${controller.randomBeer.name}'),
                            SizedBox(height: 10),
                            Text('Tagline: ${controller.randomBeer.tagline}'),
                            SizedBox(height: 10),
                            Text(controller.randomBeer.description),
                            SizedBox(height: 20),
                            Center(
                              child: Divider(
                                height: 1,
                                thickness: 1,
                                color: CustomColors.black,
                              ),
                            ),
                            SizedBox(height: 10),
                            RichTextCusrom(
                              label: 'First Brewed',
                              valueText: controller.randomBeer.firstBrewed,
                            ),
                            SizedBox(height: 8),
                            Container(
                              width: double.infinity,
                              child: Stack(
                                children: [
                                  RichTextCusrom(
                                    label: 'ABV',
                                    valueText:
                                        controller.randomBeer.abv.toString(),
                                  ),
                                  Positioned(
                                    left: width * 0.3,
                                    child: RichTextCusrom(
                                      label: 'IBU',
                                      valueText:
                                          controller.randomBeer.ibu.toString(),
                                    ),
                                  ),
                                  Positioned(
                                    left: width * 0.6,
                                    child: RichTextCusrom(
                                      label: 'EBC',
                                      valueText:
                                          controller.randomBeer.ebc.toString(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              width: double.infinity,
                              child: Stack(
                                children: [
                                  RichTextCusrom(
                                    label: 'SRM',
                                    valueText:
                                        controller.randomBeer.srm.toString(),
                                  ),
                                  Positioned(
                                    left: width * 0.3,
                                    child: RichTextCusrom(
                                      label: 'PH',
                                      valueText:
                                          controller.randomBeer.ph.toString(),
                                    ),
                                  ),
                                  Positioned(
                                    left: width * 0.6,
                                    child: RichTextCusrom(
                                      label: 'AL',
                                      valueText: controller
                                          .randomBeer.attenuationLevel
                                          .toString(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Center(
                              child: Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: CustomColors.black),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Ingredients',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 20),
                            Center(
                              child: Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: CustomColors.black),
                            ),
                            SizedBox(
                              height: 20,
                            ),
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
