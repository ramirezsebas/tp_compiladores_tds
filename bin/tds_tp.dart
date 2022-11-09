import 'package:tds_tp/tds_tp.dart' show Tds;

void main(List<String> arguments) {
  final String input = "hoy puede que llueva";

  Tds tds = Tds(entrada: input);

  try {
    print(tds.palabra());
  } catch (e) {
    print(e);
  }
}
