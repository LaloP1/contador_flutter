//Un widget es una clase, entonces, nosotros vamos a crear un widget independiente con una clase

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //indicamos que nuestro widget tiene una key para identificarla
  const HomeScreen({super.key});

  @override
  //Build es donde defines la jerarquía de widgets que compondrán tu interfaz de usuario.
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Home Screen'),
          ),
          elevation: 0,
        ),
        body: const Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Número de Clicks',
                  style: fontSize30,
                ),
                Text(
                  '10',
                  style: fontSize30,
                ),
              ]),
        ),

        //Cambia la direccion del widget loatingActionButton 
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        //Crea un widget para un boton flotante
        floatingActionButton: FloatingActionButton(
          child: const Icon( Icons.add),
          onPressed: () {
            print('hO00LA');
          },
        ),
      );
  }
}
