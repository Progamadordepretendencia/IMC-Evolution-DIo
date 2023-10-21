import 'package:imc_calculator/service/constantes/imc_classificacoes_constants.dart';

class ImcFormula {

  static double calcularIMC(double peso, double altura) {
    return peso / (altura * altura);
  }

  static String resultadoIMC(double imc) {
    
    if (imc < 16) {
  return ImcClassificacoesConstants.magrezaGrave;
} else if (imc >= 16 && imc < 17) {
  return ImcClassificacoesConstants.magrezaModerada;
} else if (imc >= 17 && imc < 18.5) {
  return ImcClassificacoesConstants.magrezaLeve;
} else if (imc >= 18.5 && imc < 25) {
  return ImcClassificacoesConstants.saudavel;
} else if (imc >= 25 && imc < 30) {
  return ImcClassificacoesConstants.sobrepeso;
} else if (imc >= 30 && imc < 35) {
  return ImcClassificacoesConstants.obesidadeGrau1;
} else if (imc >= 35 && imc < 40) {
  return ImcClassificacoesConstants.obesidadeGrau2;
} else if (imc >= 40) {
  return ImcClassificacoesConstants.obesidadeGrau3;
} else {
  return "";
}
    }
  }

  

