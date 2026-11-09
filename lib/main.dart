import 'package:flutter/material.dart';
import 'package:reservas_tardo/ui/core/ui/espacio_tarjeta.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Catálogo de salas')),
      body: ListView(
        children: [
          EspacioTarjeta(nombre_sala: "Sala 1", personas: 21, zona: "Interior"),
          EspacioTarjeta(
            nombre_sala: "Sala 2",
            personas: 23,
            tipo: "Presentaciones",
          ),
          EspacioTarjeta(
            nombre_sala: "Wc",
            personas: 1,
            zona: "Privada",
            tipo: "Necesidades",
          ),
        ],
      ),
    );
  }
}
