// Clase BicicletaSmart
class BicicletaSmart {
  String marca;
  String modelo;
  int anio;
  bool tieneGPS;
  bool tieneMonitorRitmo;

  // Constructor general  para ser llamado por los constructores con nombre
  BicicletaSmart._(
    this.marca,
    this.modelo,
    this.anio,
    this.tieneGPS,
    this.tieneMonitorRitmo,
  );

  // Constructor con nombre para una bicicleta básica
  BicicletaSmart.basica({
    required String marca,
    required String modelo,
    required int anio,
  }) : this._(marca, modelo, anio, false, false);

  // Constructor con nombre para una bicicleta premium
  BicicletaSmart.premium({
    required String marca,
    required String modelo,
    required int anio,
  }) : this._(marca, modelo, anio, true, true);

  // Método para imprimir los detalles de la bicicleta.
  void descripcion() {
    print('Bicicleta: $marca $modelo ($anio)');
    print('  - GPS: ${tieneGPS ? "Sí" : "No"}');
    print('  - Monitor de Ritmo Cardíaco: ${tieneMonitorRitmo ? "Sí" : "No"}');
  }
}

// Función principal para probar las clases
void main() {
  // Crea una instancia de una bicicleta básica.
  final biciBasica = BicicletaSmart.basica(
    marca: 'Trek',
    modelo: 'FX 2',
    anio: 2023,
  );
  print('--- Detalles de la Bicicleta Básica ---');
  biciBasica.descripcion();

  print('\n');

  // Crea una instancia de una bicicleta premium.
  final biciPremium = BicicletaSmart.premium(
    marca: 'Specialized',
    modelo: 'Turbo Vado SL',
    anio: 2024,
  );
  print('--- Detalles de la Bicicleta Premium ---');
  biciPremium.descripcion();
}
