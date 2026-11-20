import 'package:flutter/material.dart';
import 'package:reservas_tardo/data/services/datos_demo.dart';
import 'package:reservas_tardo/domain/models/espacio.dart';
import 'package:reservas_tardo/ui/components/generic/AppbarIcono.dart';
import 'package:reservas_tardo/ui/components/generic/TextoApp.dart';

class NuevaReservaScreen extends StatefulWidget {
  const NuevaReservaScreen({super.key});

  @override
  State<NuevaReservaScreen> createState() => _NuevaReservaScreenState();
}

class _NuevaReservaScreenState extends State<NuevaReservaScreen> {
  Espacio _espacioSeleccionado = DatosDemo.espacios.first;
  DateTime? _diaEntrada;
  TimeOfDay? _horaEntrada;
  DateTime? _diaSalida;
  TimeOfDay? _horaSalida;

  final _formKey = GlobalKey<FormState>();

  String _formatearDia(DateTime? dia) {
    if (dia == null) return 'Seleccionar';
    return '${dia.day.toString().padLeft(2, '0')}/${dia.month.toString().padLeft(2, '0')}/${dia.year}';
  }

  String _formatearHora(TimeOfDay? hora) {
    if (hora == null) return 'Seleccionar';
    return '${hora.hour.toString().padLeft(2, '0')}:${hora.minute.toString().padLeft(2, '0')}';
  }

  Future<void> _seleccionarDia({required bool esEntrada}) async {
    final fechaInicial = esEntrada
        ? _diaEntrada ?? DateTime.now()
        : _diaSalida ?? _diaEntrada ?? DateTime.now();

    final fecha = await showDatePicker(
      context: context,
      initialDate: fechaInicial,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365 * 2)),
    );

    if (fecha != null) {
      setState(() {
        if (esEntrada) {
          _diaEntrada = fecha;
        } else {
          _diaSalida = fecha;
        }
      });
    }
  }

  Future<void> _seleccionarHora({required bool esEntrada}) async {
    final hora = await showTimePicker(
      context: context,
      initialTime: esEntrada
          ? _horaEntrada ?? TimeOfDay.now()
          : _horaSalida ?? TimeOfDay.now(),
    );

    if (hora != null) {
      setState(() {
        if (esEntrada) {
          _horaEntrada = hora;
        } else {
          _horaSalida = hora;
        }
      });
    }
  }

  Widget _selector({
    required String etiqueta,
    required String valor,
    required IconData icono,
    required VoidCallback onTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          etiqueta,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 6),
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8),
          child: InputDecorator(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 14,
              ),
              suffixIcon: Icon(icono),
            ),
            child: Text(valor),
          ),
        ),
      ],
    );
  }

  DateTime? _fechaHoraCompleta(DateTime? dia, TimeOfDay? hora) {
    if (dia == null || hora == null) return null;
    return DateTime(dia.year, dia.month, dia.day, hora.hour, hora.minute);
  }

  void _reservar() {
    if (_diaEntrada == null ||
        _horaEntrada == null ||
        _diaSalida == null ||
        _horaSalida == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Completa el día y la hora de entrada y salida'),
        ),
      );
      return;
    }

    final entrada = _fechaHoraCompleta(_diaEntrada, _horaEntrada)!;
    final salida = _fechaHoraCompleta(_diaSalida, _horaSalida)!;

    if (!salida.isAfter(entrada)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('La salida debe ser posterior a la entrada'),
        ),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Reserva solicitada para ${_espacioSeleccionado.nombre}'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarIcono(NombrePagina: "Nueva reserva"),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextoApp(texto: "Selecciona el espacio", tipo: TipoTexto.subtitulo),

            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              color: Color.fromARGB(255, 93, 145, 120),
              child: DropdownButtonFormField<Espacio>(
                initialValue: _espacioSeleccionado,
                dropdownColor: const Color.fromARGB(255, 93, 145, 120),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
                decoration: const InputDecoration(border: InputBorder.none),
                items: DatosDemo.espacios
                    .map(
                      (espacio) => DropdownMenuItem(
                        value: espacio,
                        child: Text(espacio.nombre),
                      ),
                    )
                    .toList(),
                onChanged: (espacio) {
                  if (espacio != null) {
                    setState(() => _espacioSeleccionado = espacio);
                  }
                },
              ),
            ),

            const SizedBox(height: 24),
            TextoApp(texto: "Entrada", tipo: TipoTexto.subtitulo),
            const SizedBox(height: 12),
            _selector(
              etiqueta: 'Día de entrada',
              valor: _formatearDia(_diaEntrada),
              icono: Icons.calendar_today,
              onTap: () => _seleccionarDia(esEntrada: true),
            ),
            const SizedBox(height: 12),
            _selector(
              etiqueta: 'Hora de entrada',
              valor: _formatearHora(_horaEntrada),
              icono: Icons.schedule,
              onTap: () => _seleccionarHora(esEntrada: true),
            ),

            const SizedBox(height: 24),
            TextoApp(texto: "Salida", tipo: TipoTexto.subtitulo),
            const SizedBox(height: 12),
            _selector(
              etiqueta: 'Día de salida',
              valor: _formatearDia(_diaSalida),
              icono: Icons.calendar_today,
              onTap: () => _seleccionarDia(esEntrada: false),
            ),
            const SizedBox(height: 12),
            _selector(
              etiqueta: 'Hora de salida',
              valor: _formatearHora(_horaSalida),
              icono: Icons.schedule,
              onTap: () => _seleccionarHora(esEntrada: false),
            ),

            const SizedBox(height: 24),
            FilledButton(
              onPressed: _reservar,
              style: FilledButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 93, 145, 120),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text('Reservar', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
