import 'package:counter_app/screens/counter_screen.dart';
//import 'package:counter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  //Correr el primer widget
  runApp( const MyApp() );
}

// Todos los widgets son clases
//Este es nuestro primer widget, nosotros debemos indicar que esto es un widget

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  //Todo StatelessWidget tiene un metodo build 

  @override
  Widget build(BuildContext context) {

    //Indicamos que el widget no va a cambiar a traves del const
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //Estoy usando el widget que importé
      
      //home: HomeScreen(),
      home: CounterScreen(),
    );
  }
}
