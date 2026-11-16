import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reservas_tardo/ui/acceso/ui/register_screen.dart';
import 'package:reservas_tardo/ui/components/generic/TextoApp.dart';
import 'package:reservas_tardo/ui/components/login/ContainerForm.dart';
import 'package:reservas_tardo/ui/core/ui/boton_grande.dart';
import 'package:reservas_tardo/ui/core/ui/boton.dart';
import 'package:reservas_tardo/ui/core/ui/main_navigation.dart';

class Login extends StatelessWidget {
  final bool mostrarFlecha;

  const Login({super.key, this.mostrarFlecha = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2E8C7),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: mostrarFlecha ? const BackButton(color: Colors.white) : null,
        leadingWidth: mostrarFlecha ? 56 : 0,
        title: const Text("Reservas Tardos · Login"),
        titleTextStyle: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontFamily: "PlayfairDisplay",
          fontStyle: FontStyle.italic,
        ),
        backgroundColor: Color.fromARGB(255, 18, 11, 11),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: Image.asset(
              'assets/images/ejemplo_sala.png',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 6),

          const TextoApp(texto: "Iniciar sesión", tipo: TipoTexto.titulo),
          const SizedBox(height: 24),

          // Campo de Correo acortado y a la izquierda
          CampoTexto(
            texto: "Correo electrónico",
            tipoTeclado: TextInputType.emailAddress,
          ),

          const SizedBox(height: 16),

          // Campo de Contraseña acortado y a la izquierda
          CampoTexto(texto: "Contraseña", ocultarTexto: true),

          const SizedBox(height: 16),

          BotonGrande(
            texto: "ENTRAR",
            icono: CupertinoIcons.square_arrow_right,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainNavigation()),
              );
            },
          ),

          const SizedBox(height: 24),

          Text(
            "¿Todavía no estás registrado?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 16),

          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 170.0,
              height: 33.0,
              child: Boton(
                texto: "Crear cuenta",
                color: Color(0xFFA753AD),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Register()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
