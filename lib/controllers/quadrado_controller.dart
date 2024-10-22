import '../models/quadrado.dart';

class QuadradoController {
  Quadrado? quadrado;

  void setDimensoes(double lado) {
    quadrado = Quadrado(lado);
  }

  double getArea() {
    return quadrado?.area() ?? 0.0;
  }

  double getPerimetro() {
    return quadrado?.perimetro() ?? 0.0;
  }
}
