class Tds {
  final String _entrada;
  int _posicion = 0;

  Tds({
    required String entrada,
  })  : _entrada = entrada,
        _posicion = 0;

  int get length => _entrada.length;

  String get entrada => _entrada;

  String get currentChar => _entrada[_posicion];

  oracion() {
    String x;
    if (currentChar == "a" ||
        currentChar == "b" ||
        currentChar == "c" ||
        currentChar == "d" ||
        currentChar == "e" ||
        currentChar == "f" ||
        currentChar == "g" ||
        currentChar == "h" ||
        currentChar == "i" ||
        currentChar == "j" ||
        currentChar == "k" ||
        currentChar == "l" ||
        currentChar == "m" ||
        currentChar == "n" ||
        currentChar == "o" ||
        currentChar == "p" ||
        currentChar == "q" ||
        currentChar == "r" ||
        currentChar == "s" ||
        currentChar == "t" ||
        currentChar == "u" ||
        currentChar == "v" ||
        currentChar == "w" ||
        currentChar == "x" ||
        currentChar == "y" ||
        currentChar == "z") {
      x = palabra() + r1();
      return x;
    } else {
      return;
    }
  }

  r1() {
    String x;
    if (currentChar == " ") {
      match(" ");
      x = "${palabra()} ${r1()}";
      return x;
    } else {}
  }

  String palabra() {
    String x;

    x = letra() + r2();

    return x;
  }

  String r2() {
    String x;
    if (currentChar == "a" ||
        currentChar == "b" ||
        currentChar == "c" ||
        currentChar == "d" ||
        currentChar == "e" ||
        currentChar == "f" ||
        currentChar == "g" ||
        currentChar == "h" ||
        currentChar == "i" ||
        currentChar == "j" ||
        currentChar == "k" ||
        currentChar == "l" ||
        currentChar == "m" ||
        currentChar == "n" ||
        currentChar == "o" ||
        currentChar == "p" ||
        currentChar == "q" ||
        currentChar == "r" ||
        currentChar == "s" ||
        currentChar == "t" ||
        currentChar == "u" ||
        currentChar == "v" ||
        currentChar == "w" ||
        currentChar == "x" ||
        currentChar == "y" ||
        currentChar == "z") {
      x = letra() + r2();
      return x;
    }
    return " ";
  }

  void match(String terminal) {
    if (_posicion >= _entrada.length - 1) {
      return;
    }

    if (currentChar != terminal) {
      throw Exception(
          "Error de Sintaxis: se esperaba '$terminal' y se encontró '${entrada[_posicion]}'");
    }
    _posicion++;
  }

  String letra() {
    String x;
    if (currentChar == "a") {
      match("a");
      x = "a";
      return x;
    } else if (currentChar == "b") {
      match("b");
      x = "b";
      return x;
    } else if (currentChar == "c") {
      match("c");
      x = "c";
      return x;
    } else if (currentChar == "d") {
      match("d");
      x = "d";
      return x;
    } else if (currentChar == "e") {
      match("e");
      x = "e";
      return x;
    } else if (currentChar == "f") {
      match("f");
      x = "f";
      return x;
    } else if (currentChar == "g") {
      match("g");
      x = "g";
      return x;
    } else if (currentChar == "h") {
      match("h");
      x = "h";
      return x;
    } else if (currentChar == "i") {
      match("i");
      x = "i";
      return x;
    } else if (currentChar == "j") {
      match("j");
      x = "j";
      return x;
    } else if (currentChar == "k") {
      match("k");
      x = "k";
      return x;
    } else if (currentChar == "l") {
      match("l");
      x = "l";
      return x;
    } else if (currentChar == "m") {
      match("m");
      x = "m";
      return x;
    } else if (currentChar == "n") {
      match("n");
      x = "n";
      return x;
    } else if (currentChar == "ñ") {
      match("ñ");
      x = "ñ";
      return x;
    } else if (currentChar == "o") {
      match("o");
      x = "o";
      return x;
    } else if (currentChar == "p") {
      match("p");
      x = "p";
      return x;
    } else if (currentChar == "q") {
      match("q");
      x = "q";
      return x;
    } else if (currentChar == "r") {
      match("r");
      x = "_r";
      return x;
    } else if (currentChar == "s") {
      match("s");
      x = "s";
      return x;
    } else if (currentChar == "t") {
      match("t");
      x = "t";
      return x;
    } else if (currentChar == "u") {
      match("u");
      x = "u";
      return x;
    } else if (currentChar == "v") {
      match("v");
      x = "v";
      return x;
    } else if (currentChar == "w") {
      match("w");
      x = "w";
      return x;
    } else if (currentChar == "x") {
      match("x");
      x = "x";
      return x;
    } else if (currentChar == "y") {
      match("y");
      x = "y";
      return x;
    } else {
      match("z");
      x = "z";
      return x;
    }
  }
}
