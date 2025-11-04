import 'package:donut_app_8sc/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  BurgerTab({super.key});

  //List of burgers
  final List burgerOnSale = [
    // flavor, price, color, imagePath, provider
    [
      'Classic',
      '120',
      Colors.orange,
      "lib/images/chocolate_donut.png",
      'McDonalds',
    ],
    [
      'Cheese',
      '135',
      Colors.yellow,
      "lib/images/strawberry_donut.png",
      'Burger King',
    ],
    [
      'Double Meat',
      '150',
      Colors.red,
      "lib/images/icecream_donut.png",
      'Wendys',
    ],
    ['Bacon', '145', Colors.brown, "lib/images/grape_donut.png", 'Five Guys'],
    ['Veggie', '110', Colors.green, "lib/images/chocolate_donut.png", 'Subway'],
    [
      'BBQ',
      '140',
      Colors.brown,
      "lib/images/strawberry_donut.png",
      'McDonalds',
    ],
    ['Chicken', '125', Colors.orange, "lib/images/icecream_donut.png", 'KFC'],
    ['Fish', '130', Colors.blue, "lib/images/grape_donut.png", 'Burger King'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.4,
      ),
      itemCount: burgerOnSale.length,
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: burgerOnSale[index][0],
          donutPrice: burgerOnSale[index][1],
          donutColor: burgerOnSale[index][2],
          donutImagePath: burgerOnSale[index][3],
          donutProvider: burgerOnSale[index][4],
        );
      },
    );
  }
}
