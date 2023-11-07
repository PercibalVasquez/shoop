// TODO Highlight: Importa el paquete de Material, que proporciona widgets para crear interfaces de usuario.
import 'package:flutter/material.dart';

// TODO Highlight: Importa el paquete de Provider, que permite gestionar datos entre widgets.
import 'package:provider/provider.dart';

// TODO Highlight: Importa el modelo de Shop, que contiene los datos de la tienda.
import 'package:shoop/src/models/shop.dart';

// TODO Highlight: Importa las páginas de Intro, Shop y Cart.
import 'package:shoop/src/pages/cart_page.dart';
import 'package:shoop/src/pages/intro_page.dart';
import 'package:shoop/src/pages/shop_page.dart';

// TODO Highlight: Importa el tema lightMode.
import 'package:shoop/src/themes/light_mode.dart';

// TODO Highlight: Crea un ChangeNotifierProvider para el modelo de Shop.
void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => Shop(),
        child: const MyApp(),
      ),
    );

// TODO Highlight: Define una clase StatelessWidget llamada MyApp.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // TODO Highlight: Implementa el método build() de la clase MyApp.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // TODO Highlight: Deshabilita la bandera de debug.
      debugShowCheckedModeBanner: false,
      // TODO Highlight: Establece la página de inicio.
      home: const IntroPage(),
      // TODO Highlight: Establece el tema de la aplicación.
      theme: lightMode,
      // TODO Highlight: Define las rutas de la aplicación.
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
