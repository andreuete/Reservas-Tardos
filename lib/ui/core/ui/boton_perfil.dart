import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonProfile extends StatelessWidget {
  final String texto;
  final IconData icono;
  final VoidCallback? onPressed;
  final Color? color;
  final double tamanoIcono;

  const ButtonProfile({
    super.key,
    required this.texto,
    required this.icono,
    this.onPressed,
    this.color,
    this.tamanoIcono = 24,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      child: Row(
        children: [
          Icon(icono, size: tamanoIcono),
          const SizedBox(width: 12),
          Text(
            texto,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Icon(CupertinoIcons.chevron_right, size: 24),
        ],
      ),
    );
  }
}
