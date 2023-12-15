import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:juyostats/bar_graph/bar_data.dart';

class MyBarGraph extends StatelessWidget {
  final List statValues;
  const MyBarGraph({super.key, required this.statValues});


  @override
  Widget build(BuildContext context) {

    BarData myBarData = BarData(
        matchLastVal: statValues[0],
        matchFirstVal: statValues[1],
        goalLastVal: statValues[2],
        goalFirstVal: statValues[3],
        asisLastVal: statValues[4],
        asisFirstVal: statValues[5],
        yellowLastVal: statValues[6],
        yellowFirstVal: statValues[7],
        redLastVal: statValues[8],
        redFirstVal: statValues[9],
    );
     myBarData.initialBarData();

    return BarChart(
      BarChartData(
        maxY: 20,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false),),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false),),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getBottomTitles)),
        ),
        barGroups: myBarData.barData.map((data) => BarChartGroupData(
            x: data.x,
            barRods: [
              BarChartRodData(
                toY: data.y,
                color: Colors.blue,
                width: 20,
                borderRadius: BorderRadius.circular(4),
                backDrawRodData: BackgroundBarChartRodData(
                  show: true,
                  toY: 20,
                  color: Colors.red[100],
                ),
              )
            ]) ).toList(),
      ),
    );
  }
}

Widget getBottomTitles (double value, TitleMeta meta,){
  const style = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );
  Widget text;
  switch(value.toInt()){
    case 1:
    text= const Text('M-22',style: style,);
        break;

    case 2:
      text= const Text('M-23',style: style,);
      break;

    case 3:
      text= const Text('G-22',style: style,);
      break;

    case 4:
      text= const Text('G-23',style: style,);
      break;

    case 5:
      text= const Text('A-22',style: style,);
      break;

    case 6:
      text= const Text('A-23',style: style,);
      break;

    case 7:
      text= const Text('S-22',style: style,);
      break;

    case 8:
      text= const Text('S-23',style: style,);
      break;

    case 9:
      text= const Text('K-22',style: style,);
      break;

    case 10:
      text= const Text('K-23',style: style,);
      break;


        default:text= const Text('',style: style,);
        break;
  }
return SideTitleWidget(child: text, axisSide: meta.axisSide);

}
