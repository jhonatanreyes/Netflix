import 'package:flutter/material.dart';
import 'pagprincipal.dart';

void main() {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      home: PaginaPrincipal(),
    );
  }
}
