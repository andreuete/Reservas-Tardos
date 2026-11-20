import 'package:reservas_tardo/domain/models/espacio.dart';
import 'package:reservas_tardo/domain/models/reserva.dart';
import 'package:reservas_tardo/domain/models/usuario.dart';

abstract final class DatosDemo {
  static const usuario = Usuario(
    id: 'usuario-1',
    nombre: 'Mapi Mientos',
    email: 'mapimientos69@gmail.com',
    imagen: 'assets/images/pimiento-sorpresa.jpeg',
    eventosOrganizados: 3,
  );

  static const espacios = <Espacio>[
    Espacio(
      id: 'sala-1',
      nombre: 'Sala 1',
      zona: 'Interior',
      capacidad: 21,
      tipo: 'Reuniones',
      descripcion:
          'Sala interior equipada para reuniones y encuentros de grupo.',
      imagen: 'assets/images/ejemplo_sala.png',
      precioPorHora: 120,
    ),
    Espacio(
      id: 'sala-2',
      nombre: 'Sala 2',
      zona: 'Centro',
      capacidad: 23,
      tipo: 'Presentaciones',
      descripcion: 'Espacio amplio preparado para presentaciones y eventos.',
      imagen: 'assets/images/ejemplo_sala.png',
      precioPorHora: 150,
    ),
    Espacio(
      id: 'espacio-privado',
      nombre: 'Wc',
      zona: 'Privada',
      capacidad: 1,
      tipo: 'Necesidades',
      descripcion: 'Espacio privado de uso individual.',
      imagen: 'assets/images/pimiento-sorpresa.jpeg',
      precioPorHora: 20,
    ),
  ];

  static final reservas = List<Reserva>.unmodifiable([
    Reserva(
      id: 'reserva-1',
      espacio: espacios[0],
      inicio: DateTime(2026, 11, 21, 21),
      fin: DateTime(2026, 11, 21, 22),
      precio: 120,
    ),
    Reserva(
      id: 'reserva-2',
      espacio: espacios[1],
      inicio: DateTime(2026, 11, 22, 18),
      fin: DateTime(2026, 11, 22, 20),
      precio: 300,
    ),
    Reserva(
      id: 'reserva-3',
      espacio: espacios[0],
      inicio: DateTime(2026, 11, 24, 21),
      fin: DateTime(2026, 11, 24, 22),
      precio: 120,
    ),
  ]);
}
