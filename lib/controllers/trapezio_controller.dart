import '../models/trapezio.dart';

class TrapezioController {
  Trapezio? trapezio;

  void setDimensoes(double baseMaior, double baseMenor, double altura) {
    trapezio = Trapezio(baseMaior, baseMenor, altura);
  }

  double getArea() {
    return trapezio?.area() ?? 0.0;
  }

  double getPerimetro(double lado1, double lado2) {
    return trapezio?.perimetro(lado1, lado2) ?? 0.0;
  }
}
