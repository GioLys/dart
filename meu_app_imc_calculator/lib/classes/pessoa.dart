class Pessoa {
  double _peso = 0.0;
  double _altura = 0.0;

  void setPeso(double peso) {
    _peso = peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }

  String calcularImc() {
    var valorImc = _peso / _altura;
    var classificacao = "";

    if (valorImc < 16) {
      classificacao = "Magreza grave";
    } else if (valorImc >= 16 && valorImc < 17) {
      classificacao = "Magreza moderada";
    } else if (valorImc >= 17 && valorImc < 18.5) {
      classificacao = "Magreza leve";
    } else if (valorImc >= 18.5 && valorImc < 25) {
      classificacao = "Saudável";
    } else if (valorImc >= 25 && valorImc < 30) {
      classificacao = "Sobrepeso";
    } else if (valorImc >= 30 && valorImc < 35) {
      classificacao = "Obesidade Grau I";
    } else if (valorImc >= 35 && valorImc < 40) {
      classificacao = "Obesidade Grau II";
    } else {
      classificacao = "Obesidade Grau III";
    }

    return ("Valor do IMC: ${valorImc.toStringAsFixed(2)} e classificação: $classificacao")
        .toString();
  }
}
