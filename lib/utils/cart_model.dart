import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // Lista de items en el carrito (guardamos solo el precio)
  final List<int> _cartItems = [];

  // Getter para el número de items
  int get itemCount => _cartItems.length;

  // Getter para el total
  int get totalPrice => _cartItems.fold(0, (sum, price) => sum + price);

  // Agregar item al carrito
  void addToCart(String priceString) {
    int price = int.parse(priceString);
    _cartItems.add(price);
    notifyListeners();
  }

  // Limpiar carrito (opcional)
  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
