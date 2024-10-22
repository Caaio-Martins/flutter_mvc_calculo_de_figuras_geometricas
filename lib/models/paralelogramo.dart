class Paralelogramo {
  double altura;
  double base;

  Paralelogramo(this.altura, this.base);

  double area() {
    return base * altura;
  }

  double perimetro() {
    return 2 * (base + altura);
  }
}
