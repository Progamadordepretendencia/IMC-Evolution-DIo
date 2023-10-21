import 'package:flutter/material.dart';
import 'package:imc_calculator/models/imc_model.dart';

class CustomImcCard extends StatelessWidget {
  final ImcModelo imc;
  final int index;

  const CustomImcCard({super.key, required this.imc, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Adiciona uma elevação para criar uma sombra
      margin: const EdgeInsets.all(8), // Adiciona margens
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "IMC $index",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Peso: ${imc.peso} kg",
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              "Altura: ${imc.altura} m",
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              "IMC: ${imc.valor.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              "Categoria: ${imc.categoria}",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}