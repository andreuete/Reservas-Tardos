import 'package:flutter/material.dart';
import 'package:reservas_tardo/ui/espacios/ui/espacios_screen.dart';
import 'package:reservas_tardo/ui/reservas/ui/mis_reservas_screen.dart';
import 'package:reservas_tardo/ui/reservas/ui/nueva_reserva_screen.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const EspaciosScreen(),
    NuevaReservaScreen(),
    const MisReservasScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explorar'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Reservar'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Mis reservas',
          ),
        ],
      ),
    );
  }
}
