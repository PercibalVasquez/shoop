import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoop/src/componentes/my_drawer.dart';
import 'package:shoop/src/componentes/my_products_tile.dart';
import 'package:shoop/src/models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // acceso a productos de la tienda
    final products = context.watch<Shop>().shop;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Pagina de la tienda"),
          actions: [
            //viajar al carrito boton
            IconButton(onPressed: ()=> Navigator.pushNamed(context, '/cart_page'), icon: const Icon(Icons.shopping_cart_outlined))
          ],
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            const SizedBox(height: 25,),
          //subtitulo
          Center(
            child: Text("Elige de la lista seleccionada de productos premium.",
            style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary ),
            ),
          ),
          //producto lista
            SizedBox(
              height: 550,
              child: ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    //obtener cada producto individual de la tienda
                    final product = products[index];
                    //devolver  los productos title
                    return MyProductTitle(product: product);
                  }),
            ),
          ],
        ));
  }
}
