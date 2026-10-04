import 'package:flutter/material.dart';
import '../modelos/libros.dart';

class TarjetaLibro extends StatelessWidget {
  const TarjetaLibro({
    super.key,
    required this.libro,
    required this.favorito,
    required this.onFavoritoChanged,
  });

  final Libro libro;
  final bool favorito;
  final VoidCallback onFavoritoChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(libro.titulo),
      subtitle: Text(libro.autor),
      trailing: IconButton(
        icon: Icon(
          favorito ? Icons.favorite : Icons.favorite_border,
        ),
        onPressed: onFavoritoChanged,
      ),
    );
  }
}