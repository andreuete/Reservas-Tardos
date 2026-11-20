import 'package:flutter/material.dart';
import 'package:reservas_tardo/domain/models/espacio.dart';
import 'package:reservas_tardo/ui/components/generic/AppbarIcono.dart';
import 'package:reservas_tardo/ui/components/generic/TextoApp.dart';

class EspacioDetalleScreen extends StatelessWidget {
  final Espacio espacio;

  const EspacioDetalleScreen({super.key, required this.espacio});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarIcono(NombrePagina: "Info"),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Image.asset(espacio.imagen, width: 250, height: 150),

          TextoApp(texto: espacio.nombre, tipo: TipoTexto.subtitulo),
          TextoApp(
            texto: "${espacio.zona} · ${espacio.capacidad} personas",
            tipo: TipoTexto.descripcion,
          ),
          TextoApp(texto: espacio.descripcion, tipo: TipoTexto.cuerpo),
          TextoApp(
            texto: "${espacio.precioPorHora.toStringAsFixed(0)} € / hora",
            tipo: TipoTexto.cuerpo,
          ),
        ],
      ),
    );
  }
}
