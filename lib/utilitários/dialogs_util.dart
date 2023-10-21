import 'package:flutter/material.dart';
import 'package:imc_calculator/models/imc_model.dart';
import 'package:imc_calculator/pages/imc_card.dart';

class DialogsUtil {
  static void showListOfImcs(
    BuildContext context,
    List<ImcModelo> list,
  ) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actionsPadding: const EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            title: const Text(
              "LISTA DE IMC",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            content: list.isEmpty
                ? const Text(
                    "Nenhum IMC Forrnecido",
                    textAlign: TextAlign.center,
                  )
                : SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    child: ListView.separated(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return CustomImcCard(
                          imc: list[index],
                          index: index + 1,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 12,
                        );
                      },
                    ),
                  ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "Fechar",
                    style: TextStyle(fontSize: 16),
                  )),
            ],
          );
        });
  }
}
