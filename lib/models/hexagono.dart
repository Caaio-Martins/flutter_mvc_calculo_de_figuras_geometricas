class Hexagono {
  double lado;

  Hexagono(this.lado);

  double area() {
    return ((3 * (lado * lado)) * 1.73205) / 2;  // 1.73205 = √3
  }

  double perimetro() {
    return 6 * lado;
  }
}
