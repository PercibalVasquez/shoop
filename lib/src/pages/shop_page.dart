// TODO Highlight: Importa el paquete de Flutter Material, que proporciona widgets para crear interfaces de usuario.
import 'package:flutter/material.dart';

// TODO Highlight: Importa el paquete de Provider, que permite gestionar datos entre widgets.
import 'package:provider/provider.dart';

// TODO Highlight: Importa el componente MyDrawer, que es el menú de navegación de la aplicación.
import 'package:shoop/src/componentes/my_drawer.dart';

// TODO Highlight: Importa el componente MyProductTile, que muestra un producto individual de la tienda.
import 'package:shoop/src/componentes/my_products_tile.dart';

// TODO Highlight: Importa el modelo de Shop, que contiene los datos de la tienda.
import 'package:shoop/src/models/shop.dart';

// TODO Highlight: Define la clase ShopPage, que es la página principal de la tienda.
class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  // TODO Highlight: Constructor de la clase ShopPage.
  @override

  // TODO Highlight: Método build() de la clase ShopPage.
  Widget build(BuildContext context) {
    // TODO Highlight: Acceso a los productos de la tienda.
    final products = context.watch<Shop>().shop;

    // TODO Highlight: Devuelve el widget Scaffold que representa la página de la tienda.
    return Scaffold(
      // TODO Highlight: AppBar de la página de la tienda.
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Página de la tienda"),
        actions: [
          // TODO Highlight: Botón para viajar a la página del carrito.
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/cart_page'),
              icon: const Icon(Icons.shopping_cart_outlined)),
        ],
      ),
      // TODO Highlight: Drawer de la página de la tienda.
      drawer: const MyDrawer(),
      // TODO Highlight: Fondo de la página de la tienda.
      backgroundColor: Theme.of(context).colorScheme.background,
      // TODO Highlight: Body de la página de la tienda.
      body: ListView(
        children: [
          // TODO Highlight: SizedBox vacío para crear un espacio entre el AppBar y el subtítulo.
          const SizedBox(height: 25),
          // TODO Highlight: Subtítulo de la página de la tienda.
          Center(
            child: Text(
              "Elige de la lista seleccionada de productos premium.",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          // TODO Highlight: Lista de productos de la tienda.
          SizedBox(
            height: 550,
            child: ListView.builder(
              // TODO Highlight: Número de elementos en la lista de productos.
              itemCount: products.length,
              // TODO Highlight: Dirección de desplazamiento de la lista de productos.
              scrollDirection: Axis.horizontal,
              // TODO Highlight: Margen de la lista de productos.
              padding: const EdgeInsets.all(15),
              // TODO Highlight: Builder de la lista de productos.
              itemBuilder: (context, index) {
                // TODO Highlight: Obtiene cada producto individual de la tienda.
                final product = products[index];

                // TODO Highlight: Devuelve el título del producto.
                return MyProductTitle(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
