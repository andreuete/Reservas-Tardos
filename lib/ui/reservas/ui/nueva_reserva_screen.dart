import 'package:flutter/material.dart';

class NuevaReservaScreen extends StatelessWidget {
  const NuevaReservaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nueva reserva'),
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
          Container(
            color: Color.fromARGB(255, 93, 145, 120),
            child: Text(
              // titulo
              "sala seleccionada (despleglable select)",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight(800),
                color: Color.fromARGB(255, 211, 209, 209),
              ),
              textAlign: TextAlign.left,
            ),
          ),

          Text(
            // titulo
            "Elige día y hora",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight(800),
              color: Color.fromARGB(255, 18, 11, 11),
            ),
            textAlign: TextAlign.left,
          ),

          //TODO: Formulario de reserva
        ],
      ),
    );
  }
}
