class CalculatorBrain {
  CalculatorBrain({
    required this.height,
    required this.weight,
  });

  final int height;
  final int weight;

  // double bmi = weight / (height*height);
  late double _bmi = 0;

  String bmiScore() {
    _bmi = weight / ((height / 100) * (height / 100));
    return _bmi.toStringAsFixed(1);
  }

  String bodyType() {
    _bmi = weight / ((height / 100) * (height / 100));
    // print(_bmi);
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String bodyTypeMessage() {
    print(_bmi);
    if (_bmi >= 25) {
      return 'You need to Workout!';
    } else if (_bmi > 18.5) {
      return 'Stay healthy, just like this';
    } else {
      return 'Get some calories!';
    }
  }
}
