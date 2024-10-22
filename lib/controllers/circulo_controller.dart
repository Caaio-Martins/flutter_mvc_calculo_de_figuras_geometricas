import '../models/circulo.dart';

class CirculoController {
  Circulo? circulo;

  void setDimensoes(double raio) {
    circulo = Circulo(raio);
  }

  double getArea() {
    return circulo?.area() ?? 0.0;
  }

  double getPerimetro() {
    return circulo?.perimetro() ?? 0.0;
  }
}
