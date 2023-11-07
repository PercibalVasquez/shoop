//TODO: Importa los paquetes necesarios
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoop/src/componentes/my_botton.dart';
import 'package:shoop/src/models/productos.dart';
import 'package:shoop/src/models/shop.dart';

//TODO: Define la clase CartPage como un widget sin estado
class CartPage extends StatelessWidget {
  //TODO: Constructor de la clase
  const CartPage({super.key});

  //TODO: Método para remover un producto del carrito
  void removeItemCart(BuildContext context, Productos product){
    //TODO: Muestra un cuadro de diálogo
    showDialog(context: context, builder: (context)=>  AlertDialog(
      //TODO: Texto del cuadro de diálogo
      content:  const Text("Desea quitar este articulo de su carrito"),
      //TODO: Acciones del cuadro de diálogo
      actions: [
        //TODO: Botón para cancelar la acción
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancelar"),
        ),
        //TODO: Botón para confirmar la acción
        MaterialButton(
          onPressed: ()  {
            //TODO: Cierra el cuadro de diálogo
            Navigator.pop(context);
            //TODO: Remueve el producto del carrito
            context.read<Shop>().removeFromCart(product);
          },
          child: const Text("Confirmar"),
        ),
      ],
    ));
  }
  //TODO: Método para el botón de pago
  void PayButtonPressed(BuildContext context){
    //TODO: Muestra un cuadro de diálogo
    showDialog(context: context, builder: (context) =>  const AlertDialog(
      content: 
        //TODO: Texto del cuadro de diálogo
        Text("¡El usuario desea realizar un pago! Conecta esta aplicación a tu backend de pagos."),
    ),);
  }

  //TODO: Método para construir el widget
  @override
  Widget build(BuildContext context) {
    //TODO: Accede a los productos del carrito
    final cart = context.watch<Shop>().cart;
    //TODO: Construye el widget
    return Scaffold(
      //TODO: Barra de la aplicación
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Pagina de Carrito"),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          //TODO: Lista del carrito
          Expanded(
            child: cart.isEmpty ?const Center(child: Text("Tu carrito esta vacio")) :ListView.builder(
              itemCount: cart.length,
              itemBuilder: (BuildContext context, int index) {
                //TODO: Lista de productos
                final item = cart[index];
                return  ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.price.toStringAsFixed(2)),
                  trailing: IconButton(icon: const Icon(Icons.remove), onPressed: () => removeItemCart(context, item),),
                );
              },
            ),
          ),
          //TODO: Botón de pago
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(onTap: ()=> PayButtonPressed(context), child: const Text("Pague Ahora")),
          )
        ],
      ),
    );
  }
}