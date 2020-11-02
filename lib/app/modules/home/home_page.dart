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
                              'Beer of the time',
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
                            RichTextCustom(
                                label: 'Name: ',
                                valueText: '${controller.randomBeer.name}',
                                labelSize: 16,
                                valueTextLabel: 14,
                                labelColor: CustomColors.black,
                                labelWeight: FontWeight.w500),
                            SizedBox(height: 10),
                            RichTextCustom(
                                label: 'Tagline: ',
                                valueText: '${controller.randomBeer.tagline}',
                                labelSize: 16,
                                valueTextLabel: 14,
                                labelColor: CustomColors.black,
                                labelWeight: FontWeight.w500),
                            SizedBox(height: 10),
                            Text(
                              controller.randomBeer.description,
                              style: TextStyle(color: CustomColors.black),
                            ),
                            SizedBox(height: 20),
                            Center(
                              child: Divider(
                                height: 1,
                                thickness: 1,
                                color: CustomColors.black,
                              ),
                            ),
                            SizedBox(height: 10),
                            RichTextCustom(
                              label: 'First Brewed:',
                              valueText: controller.randomBeer.firstBrewed,
                              labelSize: 16,
                              valueTextLabel: 16,
                              labelColor: CustomColors.texasRose,
                              labelWeight: FontWeight.w700,
                            ),
                            SizedBox(height: 8),
                            Container(
                              width: double.infinity,
                              child: Stack(
                                children: [
                                  RichTextCustom(
                                    label: 'ABV:',
                                    valueText:
                                        controller.randomBeer.abv.toString(),
                                    labelSize: 16,
                                    valueTextLabel: 16,
                                    labelColor: CustomColors.texasRose,
                                    labelWeight: FontWeight.w700,
                                  ),
                                  Positioned(
                                    left: width * 0.3,
                                    child: RichTextCustom(
                                      label: 'IBU:',
                                      valueText:
                                          controller.randomBeer.ibu.toString(),
                                      labelSize: 16,
                                      valueTextLabel: 16,
                                      labelColor: CustomColors.texasRose,
                                      labelWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Positioned(
                                    left: width * 0.6,
                                    child: RichTextCustom(
                                      label: 'EBC:',
                                      valueText:
                                          controller.randomBeer.ebc.toString(),
                                      labelSize: 16,
                                      valueTextLabel: 16,
                                      labelColor: CustomColors.texasRose,
                                      labelWeight: FontWeight.w700,
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
                                  RichTextCustom(
                                    label: 'SRM:',
                                    valueText:
                                        controller.randomBeer.srm.toString(),
                                    labelSize: 16,
                                    valueTextLabel: 16,
                                    labelColor: CustomColors.texasRose,
                                    labelWeight: FontWeight.w700,
                                  ),
                                  Positioned(
                                    left: width * 0.3,
                                    child: RichTextCustom(
                                      label: 'PH:',
                                      valueText:
                                          controller.randomBeer.ph.toString(),
                                      labelSize: 16,
                                      valueTextLabel: 16,
                                      labelColor: CustomColors.texasRose,
                                      labelWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Positioned(
                                    left: width * 0.6,
                                    child: RichTextCustom(
                                      label: 'AL:',
                                      valueText: controller
                                          .randomBeer.attenuationLevel
                                          .toString(),
                                      labelSize: 16,
                                      valueTextLabel: 16,
                                      labelColor: CustomColors.texasRose,
                                      labelWeight: FontWeight.w700,
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
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/malt.png',
                                  height: 20,
                                ),
                                Text(
                                  'Malt',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: CustomColors.emerald),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: controller.randomBeer.ingredients.malt
                                  .map((ingredient) => Container(
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 12),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                ingredient.name,
                                              ),
                                              RichTextCustom(
                                                  label: ingredient
                                                          ?.amount?.value
                                                          .toString() +
                                                      " -",
                                                  valueText:
                                                      ingredient?.amount?.unit,
                                                  labelSize: 14,
                                                  valueTextLabel: 14,
                                                  labelColor:
                                                      CustomColors.black,
                                                  labelWeight: FontWeight.w400)
                                            ],
                                          ),
                                        ),
                                      ))
                                  .toList(),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/hop.png',
                                  height: 20,
                                ),
                                Text(
                                  'Hops',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: CustomColors.emerald),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: controller.randomBeer.ingredients.hops
                                  .map((ingredient) => Container(
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 12),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                ingredient.name,
                                              ),
                                              RichTextCustom(
                                                  label: ingredient
                                                          ?.amount?.value
                                                          .toString() +
                                                      " -",
                                                  valueText:
                                                      ingredient?.amount?.unit,
                                                  labelSize: 14,
                                                  valueTextLabel: 14,
                                                  labelColor:
                                                      CustomColors.black,
                                                  labelWeight: FontWeight.w400)
                                            ],
                                          ),
                                        ),
                                      ))
                                  .toList(),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/yeast.png',
                                  height: 20,
                                ),
                                Text(
                                  'Yeast',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: CustomColors.emerald),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(controller.randomBeer.ingredients.yeast),
                            SizedBox(height: 20),
                            Center(
                              child: Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: CustomColors.black),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/food.png',
                                  height: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Matching foods',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: CustomColors.tomato),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: controller.randomBeer.foodPairing
                                  .map((food) => Container(
                                      margin:
                                          const EdgeInsets.only(bottom: 4.0),
                                      child: Text('° $food')))
                                  .toList(),
                            ),
                            SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {
                                controller.getRandomBeer();
                              },
                              child: Container(
                                width: double.infinity,
                                height: 46,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: CustomColors.texasRose),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text('Click me')),
                                ),
                              ),
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
