import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoop/src/componentes/my_botton.dart';
import 'package:shoop/src/models/productos.dart';
import 'package:shoop/src/models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  //remover item del carrito metodo
  void removeItemCart(BuildContext context, Productos product){
      showDialog(context: context, builder: (context)=>  AlertDialog(
      content:  const Text("Desea quitar este articulo de su carrito"),
      actions: [
        // boton cancelar
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancelar"),
           ),
        //boton si
          MaterialButton(
          onPressed: ()  {
          //pop  caja de dialogo
          Navigator.pop(context);
          //quitar del carrito
          context.read<Shop>().removeFromCart(product);
          },
          child: const Text("Confirmar"),
           ),
      ],
    ));
  }
  //metodo de pago boton
  void PayButtonPressed(BuildContext context){
    showDialog(context: context, builder: (context) =>  const AlertDialog(
      content: 
        Text("¡El usuario desea realizar un pago! Conecta esta aplicación a tu backend de pagos."),
    ),);
  }

  @override
  Widget build(BuildContext context) {
    //aceso a los articulos del carrito
    final cart = context.watch<Shop>().cart;
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text("Pagina de Carrito"),
    ),
    backgroundColor: Theme.of(context).colorScheme.background,
    body: Column(
      children: [
        //lista carrito
        Expanded(
          child: cart.isEmpty ?const Center(child: Text("Tu carrito esta vacio")) :ListView.builder(
          itemCount: cart.length,
          itemBuilder: (BuildContext context, int index) {
            //lista de articulos
            final item = cart[index];
            return  ListTile(
              title: Text(item.name),
              subtitle: Text(item.price.toStringAsFixed(2)),
              trailing: IconButton(icon: const Icon(Icons.remove), onPressed: () => removeItemCart(context, item),),
            );
          },
        ),),
      //boton de pago
      Padding(
        padding: const EdgeInsets.all(50.0),
        child: MyButton(onTap: ()=> PayButtonPressed(context), child: const Text("Pague Ahora")),
      )
      ],
    ),
    );
  }
}