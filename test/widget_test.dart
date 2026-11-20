import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reservas_tardo/data/services/datos_demo.dart';
import 'package:reservas_tardo/ui/espacios/ui/espacios_screen.dart';
import 'package:reservas_tardo/ui/reservas/ui/mis_reservas_screen.dart';

void main() {
  testWidgets('shows spaces and their domain details', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: EspaciosScreen()));

    expect(find.text(DatosDemo.espacios[0].nombre), findsOneWidget);
    expect(find.text(DatosDemo.espacios[1].nombre), findsOneWidget);

    await tester.ensureVisible(find.text(DatosDemo.espacios[1].nombre));
    await tester.pumpAndSettle();
    await tester.tap(find.text(DatosDemo.espacios[1].nombre));
    await tester.pumpAndSettle();

    expect(find.text(DatosDemo.espacios[1].descripcion), findsOneWidget);
  });

  testWidgets('lists the remaining spaces from the domain model', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: EspaciosScreen()));

    await tester.scrollUntilVisible(
      find.text(DatosDemo.espacios.last.nombre),
      500,
    );

    expect(find.text(DatosDemo.espacios.last.nombre), findsOneWidget);
  });

  testWidgets('shows reservation dates and prices from reservation models', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: MisReservasScreen()));

    expect(find.text('21 NOV 21:00 - 22:00'), findsOneWidget);
    expect(find.text('300 €'), findsOneWidget);
  });
}
