import 'dart:async';
import 'dart:math';
import '../modelos/libros.dart';
import '../modelos/catalogo.dart';

final _random = Random();

Future<List<Libro>> descargarCatalogo() async {
  await Future.delayed(
    Duration(seconds: _random.nextInt(4)),
  );

  if (_random.nextBool()) {
    throw Exception('Servidor ocupado');
  }
  return libros;
}

Future<List<Libro>> cargarConReintentos() async {
  for (int intento = 1; intento <= 3; intento++) {
    try {
      print('Intento $intento...');

      final resultado = await descargarCatalogo().timeout(
        const Duration(seconds: 2),
      );

      print('Catálogo cargado correctamente.');

      return resultado;
    } on TimeoutException {
      print('Intento $intento: tiempo agotado.');
    } catch (e) {
      print('Intento $intento: $e');
    }

    if (intento < 3) {
      final espera = intento * 500;

      print('Esperando ${espera} ms antes del siguiente intento...');

      await Future.delayed(
        Duration(milliseconds: espera),
      );
    }
  }
  throw Exception(
    'No se pudo cargar el catálogo después de 3 intentos.',
  );
}