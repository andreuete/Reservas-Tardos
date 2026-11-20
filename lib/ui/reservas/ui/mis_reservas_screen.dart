import 'package:flutter/material.dart';
import 'package:reservas_tardo/data/services/datos_demo.dart';
import 'package:reservas_tardo/ui/components/generic/AppbarIcono.dart';
import 'package:reservas_tardo/ui/core/ui/reserva_tarjeta.dart';

class MisReservasScreen extends StatelessWidget {
  const MisReservasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarIcono(NombrePagina: "Mis reservas"),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: DatosDemo.reservas
            .map((reserva) => ReservaTarjeta(reserva: reserva))
            .toList(),
      ),
    );
  }
}
