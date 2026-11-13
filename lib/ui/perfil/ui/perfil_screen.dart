import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reservas_tardo/ui/core/ui/boton.dart';
import 'package:reservas_tardo/ui/core/ui/boton_grande.dart';
import 'package:reservas_tardo/ui/core/ui/boton_perfil.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2E8C7),
      appBar: AppBar(
        title: const Text("Reservas Tardos · Mi perfil"),
        titleTextStyle: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontFamily: "PlayfairDisplay",
          fontStyle: FontStyle.italic,
        ),
        backgroundColor: Color.fromARGB(255, 18, 11, 11),
        leading: const BackButton(color: Colors.white),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/pimiento-sorpresa.jpeg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 15),
              const Text(
                "Mapi Mientos",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 18, 11, 11),
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),

          const Text(
            "mapimientos69@gmail.com",
            style: TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 18, 11, 11),
            ),
          ),

          const SizedBox(height: 24),

          SizedBox(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  // RESERVAS ACTIVAS
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Reservas activas",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text("5", style: TextStyle(fontSize: 32)),
                      ],
                    ),
                  ),

                  // SEPARADOR
                  Container(width: 1, height: 55, color: Colors.black26),

                  // EVENTOS ORGANIZADOS
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Eventos organizados",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text("3", style: TextStyle(fontSize: 32)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),

          const Text(
            "Tu cuenta",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 18, 11, 11),
            ),
          ),

          const SizedBox(height: 6),

          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 50,
                child: ButtonProfile(
                  texto: "Mis reservas",
                  icono: CupertinoIcons.calendar,
                  color: const Color.fromARGB(255, 92, 95, 147),
                  onPressed: () {
                    print("Mis reservas");
                  },
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                height: 50,
                child: ButtonProfile(
                  texto: "Mis eventos",
                  icono: CupertinoIcons.person_3,
                  color: const Color.fromARGB(255, 92, 95, 147),
                  onPressed: () {
                    print("Mis eventos");
                  },
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                height: 50,
                child: ButtonProfile(
                  texto: "Configuración",
                  icono: CupertinoIcons.gear_solid,
                  color: const Color.fromARGB(255, 92, 95, 147),
                  onPressed: () {
                    print("Mi perfil");
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
