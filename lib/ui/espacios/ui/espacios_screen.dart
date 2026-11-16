import 'package:flutter/material.dart';
import 'package:reservas_tardo/ui/components/generic/AppbarIcono.dart';
import 'package:reservas_tardo/ui/components/generic/TextoApp.dart';
import 'package:reservas_tardo/ui/core/ui/espacio_tarjeta.dart';

class EspaciosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarIcono(NombrePagina: "Reservas Tardo"),
      body: ListView(
        children: [
          TextoApp(
            texto: "Tu próximo espacio, más cerca",
            tipo: TipoTexto.titulo,
          ),
          TextoApp(
            texto: "Escoge entre todas nuestras salas disponibles",
            tipo: TipoTexto.descripcion,
          ),
          EspacioTarjeta(nombre_sala: "Sala 1", personas: 21, zona: "Interior"),
          EspacioTarjeta(
            nombre_sala: "Sala 2",
            personas: 23,
            tipo: "Presentaciones",
          ),
          EspacioTarjeta(
            nombre_sala: "Wc",
            personas: 1,
            zona: "Privada",
            tipo: "Necesidades",
          ),
        ],
      ),
    );
  }
}
