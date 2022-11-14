import 'dart:math' as Math;

class Tds {
// 1 2 3 4 5 6
// 6 1 5 2 4 3

// 6 1 2 3 4 5
// 6 1 5 2 3 4
// 6 1 5 2 4 3
// 1 2 3 4 5
// 5 1 4 2 3

//t -> init t fin | e            t.x = fin().x init().x t().x

  final String _entrada;
  int _posicion = 0;

  Tds({
    required String entrada,
  })  : _entrada = entrada,
        _posicion = 0;

  String output = "";

  int get length => _entrada.length;

  String get entrada => _entrada;

  String input() {
    if (_posicion < entrada.length) {
      return entrada[_posicion];
    } else {
      notFinished = false;
      return "";
    }
  }

  List<String> palabras = [];

  bool notFinished = true;

  int n = 0;

  S() {
    String pal = palabra();
    palabras.add(pal);
    n++;
    if (notFinished) {
      r1();
    }
    ordernar(palabras);
    n--;
  }

  r1() {
    if (input() == " ") {
      espacio();
      S();
    } else {
      return;
    }
  }

  ordernar(List<String> palabras) {
    double lenMid = palabras.length / 2;
    if (n > lenMid.floor()) {
      palabras.insert((2 * (palabras.length - n)), palabras.removeLast());
    }
    output = "$output${palabras[palabras.length - n]}${n == 1 ? "" : " "}";
  }

  espacio() {
    if (input() == " ") {
      match(" ");
      espacio();
      return " ";
    } else {
      return;
    }
  }

  String palabra() {
    String x;
    x = letra() + r2();
    return x;
  }

  String r2() {
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
      x = letra() + r2();
      return x;
    } else {
      return "";
    }
  }

  void match(String terminal) {
    if (input() != terminal) {
      throw Exception(
          "Error de Sintaxis: se esperaba '$terminal' y se encontró '${entrada[_posicion]}'");
    }
    _posicion++;
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
}
