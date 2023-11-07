import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoop/src/models/productos.dart';
import 'package:shoop/src/models/shop.dart';

class MyProductTitle extends StatelessWidget {
  final Productos product;
  const MyProductTitle({super.key, required this.product});

  // TODO: Clase para mostrar el título y detalles del producto.

  void addToCard(BuildContext context) {
    // TODO: Método para agregar un producto al carrito y mostrar un cuadro de diálogo.

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("¿Desea agregar este item a su carrito?"),
        actions: [
          // TODO: Cuadro de diálogo de confirmación.
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancelar"),
          ),
          MaterialButton(
            onPressed: () {
              // TODO: Cerrar el cuadro de diálogo.
              Navigator.pop(context);
              // TODO: Agregar el producto al carrito utilizando Provider.
              context.read<Shop>().addToCart(product);
            },
            child: Text("Confirmar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Método para construir la interfaz de usuario del producto.

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.primary,
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    // TODO: Decoración para la imagen del producto.
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  child: Image.asset(product.ImagePath),
                ),
              ),
              const SizedBox(height: 25),
              Text(
                product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              // TODO: Agregar descripción del producto.
              const SizedBox(height: 10),
              Text(
                product.description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // TODO: Agregar precio del producto.
              Text('\$' + product.price.toStringAsFixed(2)),
              // TODO: Agregar botón para añadir al carrito.
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () => addToCard(context),
                  icon: const Icon(Icons.add),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
