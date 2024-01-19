//Un widget es una clase, entonces, nosotros vamos a crear un widget independiente con una clase

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  //indicamos que nuestro widget tiene una key para identificarla
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 15;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {
      
    });
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  //Build es donde defines la jerarquía de widgets que compondrán tu interfaz de usuario.
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Counter Screen'),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Número de Clicks',
                style: fontSize30,
              ),
              Text(
                '$counter',
                style: fontSize30,
              ),
            ]),
      ),

      //Crea un widget para un boton flotante
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions(
      {super.key,
      required this.increaseFn,
      required this.decreaseFn,
      required this.resetFn});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      //Lista de widgets
      children: [
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () => decreaseFn(),
        ),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.autorenew),
        ),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => increaseFn(),
        ),
      ],
    );
  }
}
