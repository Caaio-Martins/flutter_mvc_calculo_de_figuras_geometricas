import '../models/losango.dart';

class LosangoController {
  Losango? losango;

  void setDimensoes(double diagonalMaior, double diagonalMenor) {
    losango = Losango(diagonalMaior, diagonalMenor);
  }

  double getArea() {
    return losango?.area() ?? 0.0;
  }

  double getPerimetro(double lado) {
    return losango?.perimetro(lado) ?? 0.0;
  }
}
