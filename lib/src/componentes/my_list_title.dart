import 'package:flutter/material.dart';

// TODO: Define una clase MyListTitle que extiende StatelessWidget.
class MyListTitle extends StatelessWidget {
  final String text; // TODO: Propiedad que almacena el texto del elemento de la lista.
  final IconData icon; // TODO: Propiedad que almacena el icono a mostrar.
  final void Function()? onTap; // TODO: Propiedad que representa la función a ejecutar cuando se toca el elemento de la lista.

  // TODO: Constructor de la clase MyListTitle con parámetros obligatorios.
  const MyListTitle({
    super.key, // TODO: Llave superflua en la declaración del constructor.
    required this.text, // TODO: El texto se asigna a la propiedad 'text'.
    required this.icon, // TODO: El icono se asigna a la propiedad 'icon'.
    required this.onTap, // TODO: La función se asigna a la propiedad 'onTap'.
  });

  // TODO: Método build que devuelve un widget basado en el contexto proporcionado.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0), // TODO: Agrega un relleno a la izquierda de 25.0 unidades.
      child: ListTile(
        leading: Icon(
          icon, // TODO: Muestra el icono en la parte izquierda del elemento de la lista.
          color: Colors.grey, // TODO: Define el color gris para el icono.
        ),
        title: Text(text), // TODO: Muestra el texto como título del elemento de la lista.
        onTap: onTap, // TODO: Asigna la función onTap para el evento de toque en el elemento de la lista.
      ),
    );
  }
}
