import 'package:flutter/material.dart';

// TODO: Define una clase MyButton que extiende StatelessWidget.
class MyButton extends StatelessWidget {
  final void Function()? onTap; // TODO: Propiedad que representa la función a ejecutar cuando se toca el botón.
  final Widget child; // TODO: Propiedad que almacena el widget hijo del botón.

  // TODO: Constructor de la clase MyButton con parámetros obligatorios.
  const MyButton({
    super.key, // TODO: Llave superflua en la declaración del constructor.
    required this.onTap, // TODO: La función se asigna a la propiedad 'onTap'.
    required this.child, // TODO: El widget hijo se asigna a la propiedad 'child'.
  });

  // TODO: Método build que devuelve un GestureDetector envuelto en un contenedor.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // TODO: Asigna la función onTap al GestureDetector.
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(15), // TODO: Define un borde redondeado con radio de 15 unidades.
        ),
        padding: const EdgeInsets.all(25), // TODO: Agrega un relleno de 25 unidades en todas las direcciones al contenedor.
        child: child, // TODO: Muestra el widget hijo dentro del contenedor.
      ),
    );
  }
}
