import 'package:flutter/material.dart';
import 'package:reservas_tardo/data/services/datos_demo.dart';
import 'package:reservas_tardo/ui/components/generic/AppbarIcono.dart';
import 'package:reservas_tardo/ui/components/generic/TextoApp.dart';
import 'package:reservas_tardo/ui/core/ui/espacio_tarjeta.dart';

class EspaciosScreen extends StatelessWidget {
  const EspaciosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarIcono(NombrePagina: "Reservas Tardo"),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextoApp(
            texto: "Tu próximo espacio, más cerca",
            tipo: TipoTexto.titulo,
          ),
          TextoApp(
            texto: "Escoge entre todas nuestras salas disponibles",
            tipo: TipoTexto.descripcion,
          ),
          ...DatosDemo.espacios.map(
            (espacio) => EspacioTarjeta(espacio: espacio),
          ),
        ],
      ),
    );
  }
}
