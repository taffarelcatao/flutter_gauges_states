import 'dart:async';
import 'dart:math';
import 'package:flutter_gauges_states/bloc_pattern/imc_state.dart';

class ImcBlocPatternController {
  final _imcStreamController = StreamController<ImcState>.broadcast()
    ..add(ImcState(imc: 0));
  Stream<ImcState> get imcOut => _imcStreamController.stream;

  Future<void> calcularIMC(
      {required double peso, required double altura}) async {
    try {
      _imcStreamController.add(ImcStateLoadin());
      await Future.delayed(Duration(seconds: 1));
      final imc = peso / pow(altura, 2);

      _imcStreamController.add(ImcState(imc: imc));
    } on Exception catch (e) {
      _imcStreamController.add(ImcStateError(messege: 'Erro ao calcular IMC'));
    }
  }

  void dispose() {
    _imcStreamController.close();
  }
}
