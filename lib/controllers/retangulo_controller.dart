import '../models/retangulo.dart';

class RetanguloController {
  Retangulo? retangulo;

  void setDimensoes(double altura, double base) {
    retangulo = Retangulo(altura, base);
  }

  double getArea() {
    return retangulo?.area() ?? 0.0;
  }

  double getPerimetro() {
    return retangulo?.perimetro() ?? 0.0;
  }
}
