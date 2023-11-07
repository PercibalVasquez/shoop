import 'package:flutter/material.dart';
import 'package:shoop/src/componentes/my_list_title.dart';

// TODO: Define una clase MyDrawer que extiende StatelessWidget.
class MyDrawer extends StatelessWidget {
  // TODO: Constructor de MyDrawer con una llave opcional.
  const MyDrawer({super.key});

  // TODO: Método build que devuelve un widget basado en el contexto proporcionado.
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // TODO: Drawer cabecera
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
              // TODO: Titulo o logo de la tienda
              const SizedBox(
                height: 25,
              ),
              MyListTitle(
                  text: 'Comprar',
                  icon: Icons.home,
                  onTap: () => Navigator.pop(context)),
              // TODO: Carrito título
              MyListTitle(
                  text: 'Carrito',
                  icon: Icons.shopping_cart_checkout,
                  onTap: () {
                    // TODO: para navegar al carrito primero
                    Navigator.pop(context);
                    // TODO: go to cart page
                    Navigator.pushNamed(context, '/cart_page');
                  }),
            ],
          ),
          // TODO: Exit shop
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTitle(
                text: 'Salir',
                icon: Icons.logout,
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/intro_page', (route) => false)),
          ),
        ],
      ),
    );
  }
}
