
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_calculator/src/math_formula.dart';
import 'package:flutter_calculator/src/math_formula_evaluator.dart';

const List<List<dynamic>> samples = [
  ['.12 + 3.4 - (24 × 2. - 5%) × 6 + (2 ÷ 3)', '0.12 3.4 + 24 2.0 × 5 % - 6 × - 2 3 ÷ +', -283.5133333333334],
  ['1.2 × (5 + 6 ÷ (3 - 2.))% - 10', '1.2 5 6 3 2.0 - ÷ + % × 10 -', -9.868],
  ['0.01 + 0.02', '0.01 0.02 +', 0.03]
];

void main() {
  test("Testing MathFormulaEvaluator#evaluate()", () {
    for (int i = 0; i < samples.length; i++) {
      List<dynamic> sample = samples[i];

      MathFormula formula = MathFormula(expr: sample[0]);
      MathFormulaEvaluator evaluator = MathFormulaEvaluator(formula);

      double result = evaluator.evaluate();

      expect(result, equals(sample[2]));
    }
  });
}