import 'package:flutter/material.dart';
import 'modelos/libros.dart';
import 'modelos/prestamo.dart';
import 'servicios/catalogo_service.dart';
import 'pantallas/catalogo_screen.dart';

void main() async {
  runApp(const BibliotecaApp());
}

class BibliotecaApp extends StatelessWidget {
  const BibliotecaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biblioteca',
      home: const CatalogoScreen(),
    );
  }
}