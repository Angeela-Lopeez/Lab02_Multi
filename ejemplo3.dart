// Clase abstracta Trabajador
abstract class Trabajador {
  String nombre;
  double salarioMensual;

  Trabajador({required this.nombre, required this.salarioMensual});

  // Método abstracto que debe ser implementado por las subclases
  double calcularBonificacion();
}

// Subclase AdministradorSistemas
class AdministradorSistemas extends Trabajador {
  AdministradorSistemas({
    required String nombre,
    required double salarioMensual,
  }) : super(nombre: nombre, salarioMensual: salarioMensual);

  @override
  double calcularBonificacion() {
    return salarioMensual * 0.18; // 18% de bonificación
  }
}

// Subclase TecnicoSoporte
class TecnicoSoporte extends Trabajador {
  TecnicoSoporte({required String nombre, required double salarioMensual})
    : super(nombre: nombre, salarioMensual: salarioMensual);

  @override
  double calcularBonificacion() {
    return salarioMensual * 0.10; // 10% de bonificación
  }
}

// Función principal para probar las clases
void main() {
  // Crea una lista de tipo Trabajador (polimorfismo)
  final List<Trabajador> personal = [
    AdministradorSistemas(nombre: 'Carlos Pérez', salarioMensual: 4500.00),
    TecnicoSoporte(nombre: 'Ana Gómez', salarioMensual: 3000.00),
    AdministradorSistemas(nombre: 'Luis Soto', salarioMensual: 5000.00),
  ];

  // Itera sobre la lista y calcula las bonificaciones polimórficamente
  for (final trabajador in personal) {
    final bonificacion = trabajador.calcularBonificacion();
    print('Empleado: ${trabajador.nombre}');
    print('  - Salario: \$${trabajador.salarioMensual}');
    print('  - Bonificación: \$${bonificacion.toStringAsFixed(2)}\n');
  }
}
