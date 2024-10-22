class Trapezio {
  double baseMaior;
  double baseMenor;
  double altura;

  Trapezio(this.baseMaior, this.baseMenor, this.altura);

  double area() {
    return ((baseMaior + baseMenor) * altura) / 2;
  }

  double perimetro(double lado1, double lado2) {
    return baseMaior + baseMenor + lado1 + lado2;
  }
}
