class HeightInvald implements Exception {
  final String message;

  HeightInvald({this.message = "Altura inválida, tente novamente com uma altura válida"});

  @override
  String toString() {
    return "HeightInvalid: $message";
  }
}
