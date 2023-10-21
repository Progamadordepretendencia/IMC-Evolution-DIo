import 'package:flutter/material.dart';

class CustomSnackBarUtil {
  static void customSnackBar(BuildContext context, String text, {Function()? onClose}) {
    final snackBar = SnackBar(
      content: Row(
        children: <Widget>[
          const Icon(Icons.info, color: Colors.blue), // Ícone de informação
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
      backgroundColor: Colors.yellow, // Cor de fundo personalizada
      duration: const Duration(seconds: 5), // Duração personalizada
      action: SnackBarAction(
        label: 'Fechar',
        textColor: Colors.purpleAccent, // Cor do texto do botão
        onPressed: () {
          onClose?.call();
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}