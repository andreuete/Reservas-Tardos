import 'package:flutter/material.dart';

class ReservaTarjeta extends StatelessWidget {
  final String nombre_sala;
  final String zona;
  final String fecha;
  final String horaIn;
  final String horaOut;
  final int precio;

  const ReservaTarjeta({
    super.key,
    required this.nombre_sala,
    required this.zona,
    required this.fecha,
    required this.horaIn,
    required this.horaOut,
    required this.precio,
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
          Align(
            // TITULO
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
              zona,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight(400),
                color: Color.fromARGB(255, 242, 232, 199),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "$fecha $horaIn - $horaOut",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight(400),
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "$precio €",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight(400),
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Ver detalles ->",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight(400),
                color: Color.fromARGB(255, 242, 232, 199),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
