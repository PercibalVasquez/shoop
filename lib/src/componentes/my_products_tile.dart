import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoop/src/models/productos.dart';
import 'package:shoop/src/models/shop.dart';

class MyProductTitle extends StatelessWidget {
  final Productos product;
  const MyProductTitle({super.key, required this.product});

  //boton para agregar al precionar al carro
  void addToCard(BuildContext context){
    //al agregar al carrito mostrar un cuadro de dialogo para preguntar si desea agregar
    showDialog(context: context, builder: (context)=>  AlertDialog(
      content:  Text("Desea agregar este item a su carrito"),
      actions: [
        // boton cancelar
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Cancelar"),
           ),
        //boton si
          MaterialButton(
          onPressed: ()  {
          //pop  caja de dialogo
          Navigator.pop(context);
          //añadir al carrito
          context.read<Shop>().addToCart(product);
          },
          child: Text("Confirmar"),
           ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.primary,
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //imagen de producto
          Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  child: Image.asset(product.ImagePath),
                ),
              ),
              const SizedBox(height: 25),
              //nombre de producto
              Text(
                product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              //descripcion del producto
              const SizedBox(height: 10),
              Text(
                product.description,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //producto precio
              Text('\$' + product.price.toStringAsFixed(2)),
              //añadir al carrito boton
              Container(
                decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary, borderRadius: BorderRadius.circular(12)),
                  child: IconButton(
                      onPressed: () => addToCard(context), icon: const Icon(Icons.add))),
            ],
          ),
        ],
      ),
    );
  }
}
