enum Genero {
  novela('Novela'),
  ciencia('Ciencia'),
  historia('Historia'),
  comic('Cómic');

  final String etiqueta;

  const Genero(this.etiqueta);
}

class Libro {
  final String isbn;
  final String titulo;
  final String autor;
  final int anio;
  final Genero genero;
  final String? sinopsis;

  const Libro({
    required this.isbn,
    required this.titulo,
    required this.autor,
    required this.anio,
    required this.genero,
    this.sinopsis,
  });

  Libro copyWith({
    String? isbn,
    String? titulo,
    String? autor,
    int? anio,
    Genero? genero,
    String? sinopsis,
  }) {
    return Libro(
      isbn: isbn ?? this.isbn,
      titulo: titulo ?? this.titulo,
      autor: autor ?? this.autor,
      anio: anio ?? this.anio,
      genero: genero ?? this.genero,
      sinopsis: sinopsis ?? this.sinopsis,
    );
  }
}