import 'package:donut_app_8sc/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  SmoothieTab({super.key});

  //List of smoothies
  final List smoothieOnSale = [
    // flavor, price, color, imagePath, provider
    [
      'Strawberry',
      '75',
      Colors.red,
      "lib/images/strawberry_donut.png",
      'Jamba Juice',
    ],
    [
      'Mango',
      '80',
      Colors.orange,
      "lib/images/chocolate_donut.png",
      'Tropical Smoothie',
    ],
    [
      'Blueberry',
      '77',
      Colors.blue,
      "lib/images/icecream_donut.png",
      'Smoothie King',
    ],
    [
      'Green Detox',
      '85',
      Colors.green,
      "lib/images/grape_donut.png",
      'Jamba Juice',
    ],
    [
      'Pineapple',
      '78',
      Colors.yellow,
      "lib/images/chocolate_donut.png",
      'Tropical Smoothie',
    ],
    [
      'Mixed Berry',
      '82',
      Colors.purple,
      "lib/images/strawberry_donut.png",
      'Smoothie King',
    ],
    [
      'Banana',
      '73',
      Colors.yellow,
      "lib/images/icecream_donut.png",
      'Jamba Juice',
    ],
    [
      'Acai Bowl',
      '90',
      Colors.purple,
      "lib/images/grape_donut.png",
      'Tropical Smoothie',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.4,
      ),
      itemCount: smoothieOnSale.length,
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: smoothieOnSale[index][0],
          donutPrice: smoothieOnSale[index][1],
          donutColor: smoothieOnSale[index][2],
          donutImagePath: smoothieOnSale[index][3],
          donutProvider: smoothieOnSale[index][4],
        );
      },
    );
  }
}
