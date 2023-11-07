//TODO: Importa los paquetes necesarios
import 'package:flutter/material.dart';
import 'package:shoop/src/models/productos.dart';

//TODO: Define la clase Shop como un ChangeNotifier
class Shop extends ChangeNotifier{
  //TODO: Productos a la venta
  final List<Productos> _shop = [
    //TODO: Producto 1
    Productos(
        name: "Producto 1",
        price: 99.99,
        description: "Item description mas descripcion .....",
        ImagePath: 'assets/lentes.jpg'
       ),
    //TODO: Producto 2
    Productos(
        name: "Producto 2",
        price: 99.99,
        description: "Item description",
        ImagePath: 'assets/pantalon.jpg'
       ),
    //TODO: Producto 3
    Productos(
        name: "Producto 3",
        price: 99.99,
        description: "Item description",
        ImagePath: 'assets/poleron.jpg'
       ),
    //TODO: Producto 4
    Productos(
        name: "Producto 4",
        price: 99.99,
        description: "Item description",
        ImagePath: 'assets/zapatilla.jpg'
       ),
  ];
  
  //TODO: Carrito de compras
  List<Productos> _cart =[];

  //TODO: Método para obtener la lista de productos
  List<Productos> get shop => _shop;
  
  //TODO: Método para obtener el carrito de compras
  List<Productos> get cart => _cart;
  
  //TODO: Método para agregar un producto al carrito
  void addToCart(Productos item){
    _cart.add(item);
    //TODO: Notificar a los listeners
    notifyListeners();
  }

  //TODO: Método para remover un producto del carrito
  void removeFromCart(Productos item){
    _cart.remove(item);
    //TODO: Notificar a los listeners
    notifyListeners();
  }
}
