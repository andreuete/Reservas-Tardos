import 'package:flutter/material.dart';
import 'package:reservas_tardo/domain/models/espacio.dart';
import 'package:reservas_tardo/ui/components/generic/TextoAppBlanco.dart';
import 'package:reservas_tardo/ui/espacios/ui/espacio_detalle_screen.dart';

class EspacioTarjeta extends StatelessWidget {
  final Espacio espacio;

  const EspacioTarjeta({super.key, required this.espacio});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EspacioDetalleScreen(espacio: espacio),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 93, 145, 120),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Image.asset(espacio.imagen, width: 250, height: 150),
            //Placeholder(
            //  color: Colors.black54,
            //  fallbackHeight: 200,
            //  fallbackWidth: 200,
            //),
            Align(
              alignment: Alignment.centerLeft,
              child: TextoAppBlanco(
                texto: espacio.nombre,
                tipo: TipoTexto.subtitulo,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextoAppBlanco(
                texto:
                    "${espacio.zona} · ${espacio.capacidad} personas - ${espacio.tipo}",
                tipo: TipoTexto.cuerpo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
