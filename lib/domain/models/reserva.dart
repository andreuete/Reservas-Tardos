import 'package:reservas_tardo/domain/models/espacio.dart';

class Reserva {
  final String id;
  final Espacio espacio;
  final DateTime inicio;
  final DateTime fin;
  final double precio;

  const Reserva({
    required this.id,
    required this.espacio,
    required this.inicio,
    required this.fin,
    required this.precio,
  });

  bool get estaActiva => fin.isAfter(DateTime.now());
}
