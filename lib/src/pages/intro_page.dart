import 'package:flutter/material.dart';
import 'package:shoop/src/componentes/my_botton.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.shopping_bag,
              size: 72, 
              color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25,),
            //titulo
              const Text("Tienda Minima", 
              style: TextStyle(fontWeight: FontWeight.bold,
               fontSize: 24),),
              const SizedBox(height: 10,),
            //subtitulo
               Text("Productos Premiun", 
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary ),
              ),
            //boton de ingreso
                const SizedBox(height: 15,),
            MyButton(onTap: ()=> Navigator.pushNamed(context, '/shop_page'), 
            child: const Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}