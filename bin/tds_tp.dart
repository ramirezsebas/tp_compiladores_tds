import 'package:tds_tp/tds_tp.dart';

void main(List<String> arguments) {
  final String input = "a b c d";

  Tds tds = Tds(entrada: input);

  try {
    tds.lista();
  } catch (e) {
    print(e);
  }
}
