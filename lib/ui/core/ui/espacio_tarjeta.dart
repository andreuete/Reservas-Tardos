import 'dart:ffi';

import 'package:flutter/material.dart';

class EspacioTarjeta extends StatelessWidget {
  final String nombre_sala;
  final String zona;
  final int personas;
  final String tipo;
  final String img;

  const EspacioTarjeta({
    super.key,
    required this.nombre_sala,
    this.zona = "Centro",
    required this.personas,
    this.tipo = "Reuniones",
    this.img = "assets/images/pimiento-sorpresa.jpeg",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 93, 145, 120),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Image.asset(img, width: 512, height: 512),
          //Placeholder(
          //  color: Colors.black54,
          //  fallbackHeight: 200,
          //  fallbackWidth: 200,
          //),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              nombre_sala,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight(800),
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "$zona · $personas personas - $tipo",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight(400),
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
