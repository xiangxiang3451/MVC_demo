import 'package:mvc_demo/Models/date.dart';

class CounterController {
  final CounterModel counterModel = CounterModel();
  increase() {
    counterModel.count++;
  }

  reduce() {
    counterModel.count--;
  }
}
