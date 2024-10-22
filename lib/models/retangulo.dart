class Retangulo {
  double altura;
  double base;

  Retangulo(this.altura, this.base);

  double area() {
    return altura * base;
  }

  double perimetro() {
    return 2 * (altura + base);
  }
}
