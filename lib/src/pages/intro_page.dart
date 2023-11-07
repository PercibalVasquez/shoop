// TODO Highlight: Importa el paquete de Flutter Material, que proporciona widgets para crear interfaces de usuario.
import 'package:flutter/material.dart';

// TODO Highlight: Importa el componente MyButton, que es un botón personalizado.
import 'package:shoop/src/componentes/my_botton.dart';

// TODO Highlight: Define la clase IntroPage, que es la página de introducción de la aplicación.
class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

// TODO Highlight: Define el estado de la clase IntroPage.
class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    // TODO Highlight: Devuelve el widget Scaffold que representa la página de introducción.
    return Scaffold(
      // TODO Highlight: Fondo de la página de introducción.
      backgroundColor: Theme.of(context).colorScheme.background,
      // TODO Highlight: Cuerpo de la página de introducción.
      body: Center(
        // TODO Highlight: Columna que contiene el logo, el título, el subtítulo y el botón de ingreso.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO Highlight: Logo de la aplicación.
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            // TODO Highlight: Título de la aplicación.
            const Text(
              "Tienda Minima",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 10),
            // TODO Highlight: Subtítulo de la aplicación.
            Text(
              "Productos Premiun",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 15),
            // TODO Highlight: Botón de ingreso a la página de la tienda.
            MyButton(
              onTap: () => Navigator.pushNamed(context, '/shop_page'),
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
