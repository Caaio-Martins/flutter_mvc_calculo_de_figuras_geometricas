class Cubo {
  double lado;

  Cubo(this.lado);

  double area() {
    return 6 * (lado * lado);
  }

  double volume() {
    return lado * lado * lado;
  }
}
