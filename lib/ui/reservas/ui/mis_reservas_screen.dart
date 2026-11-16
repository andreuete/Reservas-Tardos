import 'package:flutter/material.dart';
import 'package:reservas_tardo/ui/components/generic/AppbarIcono.dart';
import 'package:reservas_tardo/ui/core/ui/reserva_tarjeta.dart';

class MisReservasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarIcono(NombrePagina: "Mis reservas"),
      body: ListView(
        children: [
          ReservaTarjeta(
            nombre_sala: "Sala tal",
            zona: "Fondo delexa",
            fecha: "17 NOV",
            horaIn: "21:00",
            horaOut: "22:00",
            precio: 120,
          ),
          ReservaTarjeta(
            nombre_sala: "Sala tal",
            zona: "Fondo delexa",
            fecha: "17 NOV",
            horaIn: "21:00",
            horaOut: "22:00",
            precio: 120,
          ),
          ReservaTarjeta(
            nombre_sala: "Sala tal",
            zona: "Fondo delexa",
            fecha: "17 NOV",
            horaIn: "21:00",
            horaOut: "22:00",
            precio: 120,
          ),
        ],
      ),
    );
  }
}
