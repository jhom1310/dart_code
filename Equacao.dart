import 'dart:io';
import 'dart:math';

class Equacao {
  double? a, b, c;
  double? delta, sqrdelta, r1, r2 = 0;

  Equacao(
    double a,
    double b,
    double c,
  ) {
    this.a = a;
    this.b = b;
    this.c = c;
    this.delta = 0;
    this.r1 = 0;
    this.r2 = 0;
    this.sqrdelta = 0;
  }

  void calcDelta() {
    if (this.a != 0) {
      this.delta = (this.b! * this.b!) - (4 * this.a! * this.c!);
      this.sqrdelta = sqrt(this.delta!);
      print(this.delta);
    } else
      print("A = 0");
  }

  void raizes() {
    calcDelta();
    if (this.delta! >= 0) {
      this.r1 = ((-1) * this.b! + this.sqrdelta!) / (2 * this.a!);
      this.r2 = ((-1) * this.b! - this.sqrdelta!) / (2 * this.a!);
      print("Raizes: " +
          this.r1!.toStringAsFixed(2) +
          " e " +
          this.r2!.toStringAsFixed(2));
    } else
      print("Raizes complexas");
  }
}

main(List<String> args) {
  print("- Calcular Equações do segundo grau -");
  print("Informe o valor de A: ");
  var a = double.parse(stdin.readLineSync()!);
  print("Informe o valor de B: ");
  var b = double.parse(stdin.readLineSync()!);
  print("Informe o valor de C: ");
  var c = double.parse(stdin.readLineSync()!);

  Equacao eq = new Equacao(a, b, c);
  eq.raizes();
  print(eq.delta);
}
