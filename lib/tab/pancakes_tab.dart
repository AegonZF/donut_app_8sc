import 'package:donut_app_8sc/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  PancakesTab({super.key});

  //List of pancakes
  final List pancakesOnSale = [
    // flavor, price, color, imagePath, provider
    [
      'Buttermilk',
      '65',
      Colors.yellow,
      "lib/images/chocolate_donut.png",
      'IHOP',
    ],
    ['Blueberry', '72', Colors.blue, "lib/images/icecream_donut.png", 'Dennys'],
    [
      'Chocolate Chip',
      '70',
      Colors.brown,
      "lib/images/chocolate_donut.png",
      'IHOP',
    ],
    [
      'Strawberry',
      '75',
      Colors.red,
      "lib/images/strawberry_donut.png",
      'Dennys',
    ],
    [
      'Banana Nut',
      '68',
      Colors.yellow,
      "lib/images/chocolate_donut.png",
      'Cracker Barrel',
    ],
    ['Maple', '67', Colors.brown, "lib/images/chocolate_donut.png", 'IHOP'],
    [
      'Red Velvet',
      '78',
      Colors.red,
      "lib/images/strawberry_donut.png",
      'Dennys',
    ],
    [
      'Cinnamon',
      '69',
      Colors.brown,
      "lib/images/chocolate_donut.png",
      'Cracker Barrel',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.4,
      ),
      itemCount: pancakesOnSale.length,
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: pancakesOnSale[index][0],
          donutPrice: pancakesOnSale[index][1],
          donutColor: pancakesOnSale[index][2],
          donutImagePath: pancakesOnSale[index][3],
          donutProvider: pancakesOnSale[index][4],
        );
      },
    );
  }
}
