import 'package:flutter/material.dart';


class CustomLargeButton extends StatelessWidget {
  final Function() onPressed;

  const CustomLargeButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200), // Adiciona espaço ao redor do botão
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0), // Borda arredondada
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 16, // Aumenta o espaçamento vertical
            horizontal: 32, // Aumenta o espaçamento horizontal
          ),
        ),
        child: const Text(
          "Calculate",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}