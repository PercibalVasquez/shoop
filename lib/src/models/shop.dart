import 'package:flutter/material.dart';
import 'package:shoop/src/models/productos.dart';

class Shop extends ChangeNotifier{
  //productos a la venta
  final List<Productos> _shop = [
    //producto 1
    Productos(
        name: "Producto 1",
        price: 99.99,
        description: "Item description mas descripcion .....",
        ImagePath: 'assets/lentes.jpg'
       ),
       //producto 2
           Productos(
        name: "Producto 2",
        price: 99.99,
        description: "Item description",
        ImagePath: 'assets/pantalon.jpg'
       ),
       //producto 3
           Productos(
        name: "Producto 3",
        price: 99.99,
        description: "Item description",
        ImagePath: 'assets/poleron.jpg'
       ),
       //producto 4
           Productos(
        name: "Producto 4",
        price: 99.99,
        description: "Item description",
        ImagePath: 'assets/zapatilla.jpg'
       ),
  ];
  // usar el carrito
  List<Productos> _cart =[];

  // lista de productos en el carrito
 List<Productos> get shop => _shop;
 //usar carrito
 List<Productos> get cart => _cart;
  //agregar item al carrito
void addToCart(Productos item){
_cart.add(item);
notifyListeners();
}
  //remover item del carrito
void removeFromCart(Productos item){
_cart.remove(item);
notifyListeners();
}
}
