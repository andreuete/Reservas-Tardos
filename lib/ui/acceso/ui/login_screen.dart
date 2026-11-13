import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reservas_tardo/ui/acceso/ui/register_screen.dart';
import 'package:reservas_tardo/ui/core/ui/boton_grande.dart';
import 'package:reservas_tardo/ui/core/ui/boton.dart';

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
              height: 290,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 6),

          const Text(
            "Iniciar sesión",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 18, 11, 11),
            ),
          ),
          const SizedBox(height: 24),

          // Campo de Correo acortado y a la izquierda
          SizedBox(
            width: 300.0, // Ancho personalizado
            child: Container(
              height: 60,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xFF5C5F9E),
              ),
              child: Center(
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.white, // Texto de la contraseña
                  ),
                  cursorWidth: 2.0,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: "Correo electrónico",
                    labelStyle: TextStyle(color: Colors.white),
                    floatingLabelStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Campo de Contraseña acortado y a la izquierda
          SizedBox(
            width: 300.0, // Ancho personalizado
            child: Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xFF5C5F9E),
              ),
              child: Center(
                child: TextFormField(
                  obscureText: true,
                  style: const TextStyle(
                    color: Colors.white, // Texto de la contraseña
                  ),
                  cursorWidth: 2.0,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: "Contraseña",
                    labelStyle: TextStyle(color: Colors.white),
                    floatingLabelStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 50.0,
              child: BotonGrande(
                texto: "ENTRAR",
                icono: CupertinoIcons.square_arrow_right,
                color: Color(0xFF5D9178),
                onPressed: () {
                  print("Sesión iniciada");
                },
              ),
            ),
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
