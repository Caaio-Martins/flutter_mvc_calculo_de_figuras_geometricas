import '../models/esfera.dart';

class EsferaController {
  Esfera? esfera;

  void setDimensoes(double raio) {
    esfera = Esfera(raio);
  }

  double getVolume() {
    return esfera?.volume() ?? 0.0;
  }

  double getAreaSuperficie() {
    return esfera?.areaSuperficie() ?? 0.0;
  }
}
