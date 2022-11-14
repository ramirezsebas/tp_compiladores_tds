import 'package:tds_tp/tds_tp.dart' show Tds;

void main(List<String> arguments) {
  final String inp = "a b c d e f g";

  Tds tds = Tds(entrada: inp);

  try {
    tds.S();
    print(tds.output);
  } catch (e) {
    print(e);
  }
}
