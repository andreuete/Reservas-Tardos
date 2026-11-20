import 'package:flutter/material.dart';
import 'package:reservas_tardo/domain/models/reserva.dart';
import 'package:reservas_tardo/ui/components/generic/TextoAppBlanco.dart';

class ReservaTarjeta extends StatelessWidget {
  final Reserva reserva;

  const ReservaTarjeta({super.key, required this.reserva});

  String _formatearFecha(DateTime fecha) {
    const meses = [
      'ENE',
      'FEB',
      'MAR',
      'ABR',
      'MAY',
      'JUN',
      'JUL',
      'AGO',
      'SEP',
      'OCT',
      'NOV',
      'DIC',
    ];
    return '${fecha.day} ${meses[fecha.month - 1]}';
  }

  String _formatearHora(DateTime fecha) =>
      '${fecha.hour.toString().padLeft(2, '0')}:${fecha.minute.toString().padLeft(2, '0')}';

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
              texto: reserva.espacio.nombre,
              tipo: TipoTexto.subtitulo,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextoAppBlanco(
              texto: reserva.espacio.zona,
              tipo: TipoTexto.descripcion,
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextoAppBlanco(
                    texto:
                        "${_formatearFecha(reserva.inicio)} ${_formatearHora(reserva.inicio)} - ${_formatearHora(reserva.fin)}",
                    tipo: TipoTexto.cuerpo,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.center,
                  child: TextoAppBlanco(
                    texto: "${reserva.precio.toStringAsFixed(0)} €",
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
