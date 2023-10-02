import 'dart:convert';
import 'dart:io';
import 'package:meu_app_imc_calculator/classes/pessoa.dart';

void main(List<String> arguments) {
  print("Informe o peso:");
  var pesoInformado = stdin.readLineSync(encoding: utf8);
  double pesoObtido = 0.0;
  try {
    double pesoObtido = double.parse(pesoInformado ?? "1");
  } catch (e) {
    print("Peso inválido: $pesoInformado");
  }
  

  print("Informe a altura:");
  var alturaInformada = stdin.readLineSync(encoding: utf8);
  double alturaObtida = 0.0;
  try {
    double alturaObtida = double.parse(alturaInformada ?? "1");
  } catch (e) {
    print("Altura inválida: $alturaInformada");
  }

  var p1 = new Pessoa();
  p1.setPeso(pesoObtido);
  p1.setAltura(alturaObtida);
  print(p1.calcularImc());
}
