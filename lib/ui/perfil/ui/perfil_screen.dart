import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reservas_tardo/data/services/datos_demo.dart';
import 'package:reservas_tardo/ui/components/generic/TextoApp.dart';
import 'package:reservas_tardo/ui/core/ui/boton_perfil.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final usuario = DatosDemo.usuario;
    final reservasActivas = DatosDemo.reservas
        .where((reserva) => reserva.estaActiva)
        .length;

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
                usuario.imagen,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 15),
              TextoApp(texto: usuario.nombre, tipo: TipoTexto.titulo),
            ],
          ),

          const SizedBox(height: 6),

          TextoApp(texto: usuario.email, tipo: TipoTexto.cuerpo),

          const SizedBox(height: 24),

          SizedBox(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 167, 83, 173),
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
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "$reservasActivas",
                          style: const TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // SEPARADOR
                  Container(width: 1, height: 55, color: Colors.white),

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
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "${usuario.eventosOrganizados}",
                          style: const TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
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
                  color: Colors.white,
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
                  icono: CupertinoIcons.person_3_fill,
                  color: Colors.white,
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
                  color: Colors.white,
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
