import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final String texto;
  final bool ocultarTexto;
  final double ancho;
  final double alto;
  final TextEditingController? controller;
  final TextInputType tipoTeclado;

  const CampoTexto({
    super.key,
    required this.texto,
    this.ocultarTexto = false,
    this.ancho = 300,
    this.alto = 60,
    this.controller,
    this.tipoTeclado = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ancho,
      child: Container(
        height: alto,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFF5C5F9E),
        ),
        child: Center(
          child: TextFormField(
            controller: controller,
            obscureText: ocultarTexto,
            keyboardType: tipoTeclado,
            style: const TextStyle(color: Colors.white),
            cursorWidth: 2,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              labelText: texto,
              labelStyle: const TextStyle(color: Colors.white),
              floatingLabelStyle: const TextStyle(color: Colors.white),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
