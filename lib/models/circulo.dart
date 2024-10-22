class Circulo {
  double raio;

  Circulo(this.raio);

  double area() {
    return 3.1416 * raio * raio;
  }

  double perimetro() {
    return 2 * 3.1416 * raio;
  }
}
