import 'package:tds_tp/tds_tp.dart';

void main(List<String> arguments) {
  final String input = "hoy puede que llueva";

  Tds tds = Tds(entrada: input);

  try {
    tds.lista();
  } catch (e) {
    print(e);
  }
}
