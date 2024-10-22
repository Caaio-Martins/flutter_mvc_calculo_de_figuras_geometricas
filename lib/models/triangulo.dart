class Triangulo {
  double base;
  double altura;

  Triangulo(this.base, this.altura);

  double area() {
    return (base * altura) / 2;
  }

  double perimetro(double lado1, double lado2, double lado3) {
    return lado1 + lado2 + lado3;
  }
}
