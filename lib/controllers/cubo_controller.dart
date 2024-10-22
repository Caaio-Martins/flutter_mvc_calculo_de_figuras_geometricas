import '../models/cubo.dart';

class CuboController {
  Cubo? cubo;

  void setDimensoes(double lado) {
    cubo = Cubo(lado);
  }

  double getArea() {
    return cubo?.area() ?? 0.0;
  }

  double getVolume() {
    return cubo?.volume() ?? 0.0;
  }
}
