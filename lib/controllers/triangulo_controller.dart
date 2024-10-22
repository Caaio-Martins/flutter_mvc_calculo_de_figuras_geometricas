import '../models/triangulo.dart';

class TrianguloController {
  Triangulo? triangulo;

  void setDimensoes(double base, double altura) {
    triangulo = Triangulo(base, altura);
  }

  double getArea() {
    return triangulo?.area() ?? 0.0;
  }

  double getPerimetro(double lado1, double lado2, double lado3) {
    return triangulo?.perimetro(lado1, lado2, lado3) ?? 0.0;
  }
}
