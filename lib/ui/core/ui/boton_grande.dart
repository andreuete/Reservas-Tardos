import 'package:flutter/material.dart';

class BotonGrande extends StatelessWidget {
  final String texto;
  final IconData icono;
  final VoidCallback? onPressed;

  const BotonGrande({
    super.key,
    required this.texto,
    required this.icono,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: FilledButton.icon(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: const Color(0xFF5D9178),
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        icon: Icon(icono, size: 24, color: Colors.white),
        label: Text(
          texto,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
