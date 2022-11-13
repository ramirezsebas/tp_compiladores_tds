import 'package:tds_tp/tds_tp.dart' show Tds;

void main(List<String> arguments) {
  final String input = "a b c";

  Tds tds = Tds(entrada: input);

  try {
    List<String> out = tds.S(input);
    print(out);
  } catch (e) {
    print(e);
  }
}
