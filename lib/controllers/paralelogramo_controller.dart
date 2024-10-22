import '../models/paralelogramo.dart';

class ParalelogramoController {
  Paralelogramo? paralelogramo;

  void setDimensoes(double altura, double base) {
    paralelogramo = Paralelogramo(altura, base);
  }

  double getArea() {
    return paralelogramo?.area() ?? 0.0;
  }

  double getPerimetro() {
    return paralelogramo?.perimetro() ?? 0.0;
  }
}
