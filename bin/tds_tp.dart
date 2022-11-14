import 'package:tds_tp/tds_tp.dart';

void main(List<String> arguments) {
  final String input = "a b c d";

  Tds tds = Tds(entrada: input);
  NewTds newTds = NewTds(entrada: input);

  try {
    newTds.lista();
  } catch (e) {
    print(e);
  }
}
