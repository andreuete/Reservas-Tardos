import 'package:flutter/material.dart';
import 'package:reservas_tardo/ui/core/ui/espacio_tarjeta.dart';
import 'package:reservas_tardo/ui/core/ui/main_navigation.dart';
import 'package:reservas_tardo/ui/core/ui/reserva_tarjeta.dart';
import 'package:reservas_tardo/ui/espacios/ui/espacios_screen.dart';
import 'package:reservas_tardo/ui/reservas/ui/mis_reservas_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: MainNavigation(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}
