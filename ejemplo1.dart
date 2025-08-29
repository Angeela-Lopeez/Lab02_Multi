// Clase base Drone
class Drone {
  final int id;
  double capacidadCargaKg;
  int autonomiaMin;
  // Constructor
  Drone({
    required this.id,
    required this.capacidadCargaKg,
    required this.autonomiaMin,
  });
  // Método para mostrar la información del dron
  void mostrarFicha() {
    print(
      'ID: $id  |  Carga: ${capacidadCargaKg}kg  |  Autonomía: ${autonomiaMin}min',
    );
  }
}

// Subclase DroneMaritimo que hereda de Drone
class DroneMaritimo extends Drone {
  String resistenciaCorrosion;
  // Constructor que inicializa también la clase padre
  DroneMaritimo({
    required int id,
    required double capacidadCargaKg,
    required int autonomiaMin,
    required this.resistenciaCorrosion,
  }) : super(
         id: id,
         capacidadCargaKg: capacidadCargaKg,
         autonomiaMin: autonomiaMin,
       );
  // Sobrescribir el método para incluir la nueva propiedad
  @override
  void mostrarFicha() {
    print(
      'ID: $id  |  Carga: ${capacidadCargaKg}kg  |  Autonomía: ${autonomiaMin}min  |  Resistencia a la corrosión: $resistenciaCorrosion',
    );
  }
}

// Ejemplo en main
void main() {
  final dronAereo = Drone(id: 1, capacidadCargaKg: 2.5, autonomiaMin: 60);
  print('Ficha del dron aéreo:');
  dronAereo.mostrarFicha();

  final dronMaritimo = DroneMaritimo(
    id: 2,
    capacidadCargaKg: 5.0,
    autonomiaMin: 45,
    resistenciaCorrosion: 'Alta',
  );
  print('\nFicha del dron marítimo:');
  dronMaritimo.mostrarFicha();
}
