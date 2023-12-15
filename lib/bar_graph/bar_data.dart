import 'package:juyostats/bar_graph/inidividual_bar.dart';
class BarData{
  final double matchLastVal;
  final double matchFirstVal;
  final double goalLastVal;
  final double goalFirstVal;
  final double asisLastVal;
  final double asisFirstVal;
  final double yellowLastVal;
  final double yellowFirstVal;
  final double redLastVal;
  final double redFirstVal;

  BarData({
    required this.matchLastVal,
    required this.matchFirstVal,
    required this.goalLastVal,
    required this.goalFirstVal,
    required this.asisLastVal,
    required this.asisFirstVal,
    required this.yellowLastVal,
    required this.yellowFirstVal,
    required this.redLastVal,
    required this.redFirstVal,
});

  List<IndividualBar> barData = [];

  void initialBarData() {
    barData = [
      //match
      IndividualBar(x: 1, y: matchFirstVal),
      IndividualBar(x: 2, y: matchLastVal),
      //goal
      IndividualBar(x: 3, y: goalFirstVal),
      IndividualBar(x: 4, y: goalLastVal),
      //asist
      IndividualBar(x: 5, y: asisFirstVal),
      IndividualBar(x: 6, y: asisLastVal),
      //yellow
      IndividualBar(x: 7, y: yellowFirstVal),
      IndividualBar(x: 8, y: yellowLastVal),
     //red
      IndividualBar(x: 9, y: redFirstVal),
      IndividualBar(x: 10, y: redLastVal),
    ];
  }
}
