import 'package:flutter/material.dart';
import 'package:reservas_tardo/ui/acceso/ui/login_screen.dart';
import 'package:reservas_tardo/ui/components/generic/TextoApp.dart';
import 'package:reservas_tardo/ui/components/login/ContainerForm.dart';
import 'package:reservas_tardo/ui/core/ui/boton_grande.dart';
import 'package:reservas_tardo/ui/core/ui/boton.dart';
import 'package:flutter/cupertino.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2E8C7),
      appBar: AppBar(
        title: const Text("Reservas Tardos · Registrar"),
        titleTextStyle: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontFamily: "PlayfairDisplay",
          fontStyle: FontStyle.italic,
        ),
        backgroundColor: Color.fromARGB(255, 18, 11, 11),
        leading: const BackButton(color: Colors.white),
        // elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TextoApp(texto: "Crea tu cuenta", tipo: TipoTexto.titulo),
          const SizedBox(height: 24),

          // Campo de Correo acortado y a la izquierda
          CampoTexto(texto: "Nombre de usuario"),

          const SizedBox(height: 16),

          // Campo de Contraseña acortado y a la izquierda
          CampoTexto(
            texto: "Correo electrónico",
            tipoTeclado: TextInputType.emailAddress,
          ),

          const SizedBox(height: 16),

          CampoTexto(texto: "Contraseña", ocultarTexto: true),

          const SizedBox(height: 16),

          CampoTexto(texto: "Confirmar contraseña", ocultarTexto: true),

          const SizedBox(height: 16),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 50.0,
              child: BotonGrande(
                texto: "REGISTRAR",
                icono: CupertinoIcons.person_crop_circle_fill,
                color: Color.fromARGB(255, 93, 145, 120),
                tamanoIcono: 40,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.white,
                      title: const Column(
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: Color(0xFF5D9178),
                            size: 60,
                          ),
                          SizedBox(height: 12),
                          Text(
                            "¡Registro completado!",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      content: const Text(
                        "Te has registrado correctamente.",
                        textAlign: TextAlign.center,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context); // Cierra el AlertDialog

                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login(),
                              ),
                            );
                          },
                          child: const Text(
                            "Aceptar",
                            style: TextStyle(color: Color(0xFF5C5F9E)),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 24),

          Text(
            "¿Ya tienes una cuenta?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 16),

          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 170.0,
              height: 33.0,
              child: Boton(
                texto: "Iniciar sesión",
                color: Color(0xFFA753AD),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(mostrarFlecha: true),
                    ),
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
