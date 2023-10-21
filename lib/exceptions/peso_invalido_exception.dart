class InvalidWeight implements Exception {
  final String message;

  InvalidWeight({this.message = "Peso invalido, tente novamente com um peso válido"});

  @override
  String toString() {
    return "InvalidWeight: $message";
  }
}
