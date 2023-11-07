// TODO Highlight: Importa el paquete de Material, que proporciona widgets para crear interfaces de usuario.
import 'package:flutter/material.dart';

// TODO Highlight: Define un tema de luz para la aplicación.
ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    // TODO Highlight: El color de fondo de la aplicación.
    background: Colors.grey.shade300,
    // TODO Highlight: El color primario de la aplicación.
    primary: Colors.grey.shade200,
    // TODO Highlight: El color secundario de la aplicación.
    secondary: Colors.white,
    // TODO Highlight: El color inverso del primario de la aplicación.
    inversePrimary: Colors.grey.shade700,
  ),
);
