import 'libros.dart';

final List<Libro> libros = [
  const Libro(
    isbn: '978-001',
    titulo: 'El Hobbit',
    autor: 'J.R.R. Tolkien',
    anio: 1937,
    genero: Genero.novela,
  ),
  const Libro(
    isbn: '978-002',
    titulo: 'Breve historia del tiempo',
    autor: 'Stephen Hawking',
    anio: 1988,
    genero: Genero.ciencia,
  ),
  const Libro(
    isbn: '978-003',
    titulo: 'Historia de Roma',
    autor: 'John Smith',
    anio: 2020,
    genero: Genero.historia,
  ),
];