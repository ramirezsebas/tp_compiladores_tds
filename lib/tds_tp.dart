class Tds {
  final String _entrada;
  int _posicion;

  Tds({
    required String entrada,
  })  : _entrada = entrada,
        _posicion = 0;

  int get length => _entrada.length;

  String get entrada => _entrada;

  void lista() {
    print(texto());
  }

  String texto() {
    String x;
    x = palabra() + f1();
    return x;
  }

  String f1() {
    String x;
    if (input() == " ") {
      match(" ");
      x = "${texto()}${palabra_final()} ";
      return x;
    } else {
      return "";
    }
  }

  String palabra_final() {
    String x;
    if (input() == " ") {
      match(" ");
      x = "${palabra()} ";
      return x;
    } else {
      return "";
    }
  }

  String palabra() {
    String x;

    x = letra() + r1();

    return x;
  }

  String r1() {
    String x;
    if (input() == "a" ||
        input() == "b" ||
        input() == "c" ||
        input() == "d" ||
        input() == "e" ||
        input() == "f" ||
        input() == "g" ||
        input() == "h" ||
        input() == "i" ||
        input() == "j" ||
        input() == "k" ||
        input() == "l" ||
        input() == "m" ||
        input() == "n" ||
        input() == "o" ||
        input() == "p" ||
        input() == "q" ||
        input() == "r" ||
        input() == "s" ||
        input() == "t" ||
        input() == "u" ||
        input() == "v" ||
        input() == "w" ||
        input() == "x" ||
        input() == "y" ||
        input() == "z") {
      x = letra() + r1();
      return x;
    } else {
      return " ";
    }
  }

  String letra() {
    String x;
    if (input() == "a") {
      match("a");
      x = "a";
      return x;
    } else if (input() == "b") {
      match("b");
      x = "b";
      return x;
    } else if (input() == "c") {
      match("c");
      x = "c";
      return x;
    } else if (input() == "d") {
      match("d");
      x = "d";
      return x;
    } else if (input() == "e") {
      match("e");
      x = "e";
      return x;
    } else if (input() == "f") {
      match("f");
      x = "f";
      return x;
    } else if (input() == "g") {
      match("g");
      x = "g";
      return x;
    } else if (input() == "h") {
      match("h");
      x = "h";
      return x;
    } else if (input() == "i") {
      match("i");
      x = "i";
      return x;
    } else if (input() == "j") {
      match("j");
      x = "j";
      return x;
    } else if (input() == "k") {
      match("k");
      x = "k";
      return x;
    } else if (input() == "l") {
      match("l");
      x = "l";
      return x;
    } else if (input() == "m") {
      match("m");
      x = "m";
      return x;
    } else if (input() == "n") {
      match("n");
      x = "n";
      return x;
    } else if (input() == "ñ") {
      match("ñ");
      x = "ñ";
      return x;
    } else if (input() == "o") {
      match("o");
      x = "o";
      return x;
    } else if (input() == "p") {
      match("p");
      x = "p";
      return x;
    } else if (input() == "q") {
      match("q");
      x = "q";
      return x;
    } else if (input() == "r") {
      match("r");
      x = "_r";
      return x;
    } else if (input() == "s") {
      match("s");
      x = "s";
      return x;
    } else if (input() == "t") {
      match("t");
      x = "t";
      return x;
    } else if (input() == "u") {
      match("u");
      x = "u";
      return x;
    } else if (input() == "v") {
      match("v");
      x = "v";
      return x;
    } else if (input() == "w") {
      match("w");
      x = "w";
      return x;
    } else if (input() == "x") {
      match("x");
      x = "x";
      return x;
    } else if (input() == "y") {
      match("y");
      x = "y";
      return x;
    } else {
      match("z");
      x = "z";
      return x;
    }
  }

  void match(String terminal) {
    if (input() != terminal) {
      throw Exception(
          "Error de Sintaxis: se esperaba '$terminal' y se encontró '${entrada[_posicion]}'");
    }
    _posicion++;
  }

  String input() {
    if (_posicion < _entrada.length) {
      return _entrada[_posicion];
    } else {
      return "";
    }
  }
}
