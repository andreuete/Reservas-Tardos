import 'package:flutter/material.dart';
import 'package:reservas_tardo/ui/components/generic/TextoAppBlanco.dart';

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
            child: TextoAppBlanco(
              texto: nombre_sala,
              tipo: TipoTexto.subtitulo,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextoAppBlanco(texto: zona, tipo: TipoTexto.descripcion),
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextoAppBlanco(
                    texto: "$fecha $horaIn - $horaOut",
                    tipo: TipoTexto.cuerpo,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.center,
                  child: TextoAppBlanco(
                    texto: "$precio €",
                    tipo: TipoTexto.cuerpo,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextoAppBlanco(
              texto: "Ver detalles ->",
              tipo: TipoTexto.descripcion,
            ),
          ),
        ],
      ),
    );
  }
}
