class Productos {
  final String name;         // TODO: Agregar validación para el nombre.
  final double price;       // Precio del producto.
  final String description;  // Descripción del producto.
  final String ImagePath;    // Ruta de la imagen del producto.

  Productos({
    required this.name,        // TODO: Agregar validación para el nombre.
    required this.price,       // Precio es un parámetro obligatorio.
    required this.description, // TODO: Agregar validación para la descripción.
    required this.ImagePath    // TODO: Agregar validación para ImagePath.
  });
}
