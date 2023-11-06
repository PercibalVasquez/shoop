import 'package:flutter/material.dart';
import 'package:shoop/src/componentes/my_list_title.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Drawer cabecera
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              // Titulo o logo de la tienda
              const SizedBox(
                height: 25,
              ),
              MyListTitle(
                  text: 'Comprar',
                  icon: Icons.home,
                  onTap: () => Navigator.pop(context)),
              // Carrito título
              MyListTitle(
                  text: 'Carrito',
                  icon: Icons.shopping_cart_checkout,
                  onTap: () {
                    //para navegar al carrito primero
                    Navigator.pop(context);
                    //go to cart page
                    Navigator.pushNamed(context, '/cart_page');
                  }),
            ],
          ),
          // Exit shop
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTitle(text: 'Salir', icon: Icons.logout, onTap: () {}),
          ),
        ],
      ),
    );
  }
}
