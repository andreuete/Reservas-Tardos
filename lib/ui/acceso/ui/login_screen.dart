import 'package:flutter/material.dart';
import 'package:reservas_tardo/ui/core/ui/boton_login.dart';
import 'package:reservas_tardo/ui/core/ui/boton_registro.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2E8C7),
      appBar: AppBar(
        title: const Text("Reservas Tardos - Login"),
        titleTextStyle: TextStyle(fontSize: 18, color: Colors.white),
        backgroundColor: Colors.black,
        // elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "Iniciar sesión",
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),

          // Campo de Correo acortado y a la izquierda
          SizedBox(
            width: 300.0, // Ancho personalizado
            child: Container(
              height: 75,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xFF5D9178),
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
              height: 75,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xFF5D9178),
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

          SizedBox(
            child: BotonLogin(
              texto: "ENTRAR",
              icono: Icons.login_rounded,
              color: Color(0xFF5C5F9E),
              onPressed: () {
                print("Sesión iniciada");
              },
            ),
          ),

          const SizedBox(height: 40),

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
              child: BotonRegistro(
                texto: "Crear cuenta",
                color: Color(0xFFA753AD),
                onPressed: () {
                  print("Nueva cuenta");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
