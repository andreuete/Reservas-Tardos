import 'package:flutter/material.dart';
import 'package:reservas_tardo/ui/components/generic/AppbarIcono.dart';
import 'package:reservas_tardo/ui/components/generic/TextoApp.dart';

class EspacioDetalleScreen extends StatelessWidget {
  const EspacioDetalleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarIcono(NombrePagina: "Info"),
      body: ListView(
        children: [
          Image.asset(
            "assets/images/pimiento-sorpresa.jpeg",
            width: 250,
            height: 150,
          ),

          TextoApp(texto: "nombre_sala", tipo: TipoTexto.subtitulo),
          TextoApp(texto: "zona", tipo: TipoTexto.descripcion),
          TextoApp(
            texto: "Descripcion de la sala donde dice cosas como muebles, metros cuadrados, etc etc etc ashksdhh asdh akjsd  ashdgajshdjashd hasdg",
            tipo: TipoTexto.cuerpo,
          ),
        ],
      ),
    );
  }
}
