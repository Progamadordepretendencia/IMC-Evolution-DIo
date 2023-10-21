
import 'package:flutter/material.dart';
import 'package:imc_calculator/exceptions/height_invalid.dart';
import 'package:imc_calculator/exceptions/peso_invalido_exception.dart';


enum TextFieldType { altura, peso }

class CustomTextField extends StatelessWidget {
  final TextFieldType textFieldType;
  final TextEditingController textController;

  const CustomTextField({
    Key? key,
    required this.textController,
    required this.textFieldType,
  }) : super(key: key);

  String? pesoValidator(String? pesoInput) {
    bool pesoValido = RegExp(r"^(?:\d+\.\d*|\.\d+|\d+)$").hasMatch(pesoInput!);

    if (pesoInput.isEmpty || !pesoValido) {
      return InvalidWeight().message;
    }
    return null;
  }

  String? alturaValidator(String? alturaInput) {
    bool alturaValida =
        RegExp(r"^(?:\d+\.\d*|\.\d+|\d+)$").hasMatch(alturaInput!);
    bool numeroPositivo;

    if (double.tryParse(alturaInput) == null ||
        double.tryParse(alturaInput)! <= 0) {
      numeroPositivo = false;
    } else {
      numeroPositivo = true;
    }

    if (alturaInput.isEmpty || !alturaValida || !numeroPositivo) {
      return HeightInvald().message;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    if (textFieldType == TextFieldType.peso) {
      return TextFormField(
        controller: textController,
        validator: (pesoInput) => pesoValidator(pesoInput),
        keyboardType: TextInputType.number,
        style: const TextStyle(fontFamily: 'Roboto', fontSize: 14),
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Peso (kg)",
          prefixIcon: Icon(Icons.person, size: 18), // Ícone diferente
          labelStyle: TextStyle(fontSize: 14),
          errorStyle: TextStyle(fontSize: 12),
        ),
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
      );
    } else if (textFieldType == TextFieldType.altura) {
      return TextFormField(
        controller: textController,
        validator: (alturaInput) => alturaValidator(alturaInput),
        keyboardType: TextInputType.number,
        style: const TextStyle(fontFamily: 'Roboto', fontSize: 14),
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Altura (m)",
          prefixIcon: Icon(Icons.height, size: 20), // Ícone diferente
          labelStyle: TextStyle(fontSize: 14),
          errorStyle: TextStyle(fontSize: 12),
        ),
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
      );
    } else {
      return Container();
    }
  }
}