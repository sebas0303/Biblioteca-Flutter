import 'package:flutter/material.dart';
import '../modelos/catalogo.dart';
import '../widgets/tarjeta_libro.dart';

class CatalogoScreen extends StatefulWidget {
  const CatalogoScreen({super.key});

  @override
  State<CatalogoScreen> createState() => _CatalogoScreenState();
}

class _CatalogoScreenState extends State<CatalogoScreen> {
  final Set<String> _favoritos = {};
  bool _soloFavoritos = false;

  void _cambiarFavorito(String isbn) {
    setState(() {
      if (_favoritos.contains(isbn)) {
        _favoritos.remove(isbn);
      } else {
        _favoritos.add(isbn);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final librosMostrar = _soloFavoritos
    ? libros.where((libro) => _favoritos.contains(libro.isbn)).toList()
    : libros;
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos: ${_favoritos.length}'),
        actions: [
          Switch(
            value: _soloFavoritos,
            onChanged: (value) {
              setState(() {
                _soloFavoritos = value;
              });
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          for (final libro in librosMostrar)
            TarjetaLibro(
              libro: libro,
              favorito: _favoritos.contains(libro.isbn),
              onFavoritoChanged: () {
                _cambiarFavorito(libro.isbn);
              },
            ),
        ],
      ),
    );
  }
}