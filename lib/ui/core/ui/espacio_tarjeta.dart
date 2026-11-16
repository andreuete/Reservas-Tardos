import 'package:flutter/material.dart';
import 'package:reservas_tardo/ui/components/generic/TextoAppBlanco.dart';
import 'package:reservas_tardo/ui/espacios/ui/espacio_detalle_screen.dart';

class EspacioTarjeta extends StatelessWidget {
  final String nombre_sala;
  final String zona;
  final int personas;
  final String tipo;
  final String img;

  const EspacioTarjeta({
    super.key,
    required this.nombre_sala,
    this.zona = "Centro",
    required this.personas,
    this.tipo = "Reuniones",
    this.img = "assets/images/pimiento-sorpresa.jpeg",
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EspacioDetalleScreen()),
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
            Image.asset(img, width: 250, height: 150),
            //Placeholder(
            //  color: Colors.black54,
            //  fallbackHeight: 200,
            //  fallbackWidth: 200,
            //),
            Align(
              alignment: Alignment.centerLeft,
              child: TextoAppBlanco(
                texto: "nombre_sala",
                tipo: TipoTexto.subtitulo,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextoAppBlanco(
                texto: "$zona · $personas personas - $tipo",
                tipo: TipoTexto.cuerpo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
