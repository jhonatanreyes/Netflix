import 'package:flutter/material.dart';
import 'menu.dart';
import 'portada.dart';
import 'tendencia.dart';
import 'solonetflix.dart';

class PaginaPrincipal extends StatefulWidget {
  PaginaPrincipal({
    super.key,
  });

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  int _index = 0;

  final List<Widget> _widgetsBody = [
    const Inicio(),
    const Text(
      'PAGINA 2',
      style: TextStyle(color: Colors.white),
    ),
    const Text(
      'PAGINA 3',
      style: TextStyle(color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 21, 0, 83),
              Color.fromARGB(255, 0, 0, 0)
            ]),
      ),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (value) {
            setState(() {
              _index = value;
            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
          backgroundColor: const Color.fromARGB(50, 255, 255, 255),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.slideshow),
              label: 'Nuevo y Popular',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Mi Netflix',
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            'NETFLIX',
            style: TextStyle(fontSize: 28.0),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.cast),
              iconSize: 30.0,
            ),
            const SizedBox(width: 5.0),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              iconSize: 30.0,
            ),
          ],
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        ),
        body: Container(
          child: _widgetsBody.elementAt(_index),
        ),
      ),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Menu(),
        const Portada(),
        Tendencia(),
        const SoloNetflix(),
      ],
    );
  }
}
