import 'package:flutter/material.dart';

class EspacioDetalleScreen extends StatelessWidget {
  const EspacioDetalleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              print('Perfil pulsado');
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Image.asset(
            "assets/images/pimiento-sorpresa.jpeg",
            width: 250,
            height: 150,
          ),

          Text(
            // titulo
            "nombre_sala",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight(800),
              color: Color.fromARGB(255, 18, 11, 11),
            ),
            textAlign: TextAlign.left,
          ),

          Text(
            // propiedades
            "zona",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight(400),
              color: Color.fromARGB(255, 36, 22, 22),
            ),
            textAlign: TextAlign.left,
          ),

          Text(
            // desc
            "Lava 4-5 limones y exprímelos colando el zumo; en un cazo disuelve 100 g de azúcar en 75 ml de agua a fuego medio",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight(400),
              color: Color.fromARGB(255, 18, 11, 11),
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
