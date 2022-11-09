import 'package:tds_tp/tds_tp.dart';
import 'package:test/test.dart';

void main() {
  test('TDS', () {
    final String input = "Hoy puede que llueva";
    Tds tds = Tds(entrada: input);
    // tds.listaInicial();
    // expect(tds.listaInicial(), equals(['llueva', 'Hoy', 'que', 'pueda']));
  });
}
