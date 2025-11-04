import 'package:donut_app_8sc/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  PizzaTab({super.key});

  //List of pizzas
  final List pizzaOnSale = [
    // flavor, price, color, imagePath, provider
    ['Pepperoni', '150', Colors.red, "lib/images/Pizzas/pizza.png", 'Dominos'],
    [
      'Margherita',
      '135',
      Colors.green,
      "lib/images/Pizzas/pizza2.png",
      'Pizza Hut',
    ],
    [
      'Hawaiian',
      '145',
      Colors.yellow,
      "lib/images/Pizzas/pizza3.png",
      'Papa Johns',
    ],
    [
      'Meat Lovers',
      '160',
      Colors.brown,
      "lib/images/Pizzas/pizza4.png",
      'Dominos',
    ],
    [
      'Veggie',
      '130',
      Colors.green,
      "lib/images/Pizzas/pizza5.png",
      'Pizza Hut',
    ],
    [
      'BBQ Chicken',
      '155',
      Colors.orange,
      "lib/images/Pizzas/pizza6.png",
      'Papa Johns',
    ],
    ['Supreme', '165', Colors.red, "lib/images/Pizzas/pizza7.png", 'Dominos'],
    [
      'Four Cheese',
      '140',
      Colors.yellow,
      "lib/images/Pizzas/pizza8.png",
      'Pizza Hut',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.4,
      ),
      itemCount: pizzaOnSale.length,
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: pizzaOnSale[index][0],
          donutPrice: pizzaOnSale[index][1],
          donutColor: pizzaOnSale[index][2],
          donutImagePath: pizzaOnSale[index][3],
          donutProvider: pizzaOnSale[index][4],
        );
      },
    );
  }
}
