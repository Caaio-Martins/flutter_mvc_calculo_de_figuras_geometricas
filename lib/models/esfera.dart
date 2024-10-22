class Esfera {
  double raio;

  Esfera(this.raio);

  double volume() {
    return (4 / 3) * 3.1416 * raio * raio * raio;
  }

  double areaSuperficie() {
    return 4 * 3.1416 * raio * raio;
  }
}
