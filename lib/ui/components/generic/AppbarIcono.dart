import 'package:flutter/material.dart';
import 'package:reservas_tardo/ui/perfil/ui/perfil_screen.dart';

class AppbarIcono extends StatelessWidget implements PreferredSizeWidget {
  final String NombrePagina;
  final bool icono;

  const AppbarIcono({super.key, required this.NombrePagina, this.icono = true});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(NombrePagina),
      titleTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontFamily: "PlayfairDisplay",
        fontStyle: FontStyle.italic,
      ),
      backgroundColor: Color.fromARGB(255, 18, 11, 11),
      leading: const BackButton(color: Colors.white),
      actions: icono
          ? [
              IconButton(
                icon: const Icon(Icons.account_circle, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserProfile(),
                    ),
                  );
                },
              ),
            ]
          : null,

      // elevation: 0,
    );
  }
}
