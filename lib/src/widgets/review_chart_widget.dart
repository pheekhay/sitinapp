import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ReviewChart extends StatelessWidget {
  ReviewChart({
    Key? key,
    this.fiveValue,
    this.fourValue,
    this.threeValue,
    this.oneValue,
    this.twoValue,
  }) : super(key: key);
  double? fiveValue;
  double? fourValue;
  double? threeValue;
  double? twoValue;
  double? oneValue;
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups,
        alignment: BarChartAlignment.spaceEvenly,
        maxY: 100,
        // backgroundColor: Colors.white70,
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.transparent,
          tooltipPadding: const EdgeInsets.all(0),
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.y.round().toString(),
              const TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => TextStyle(
            color: Colors.brown.shade200,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          margin: 25,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return '5';
              case 1:
                return '4';
              case 2:
                return '3';
              case 3:
                return '2';
              case 4:
                return '1';
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        rightTitles: SideTitles(showTitles: false),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
      );

  List<BarChartGroupData> get barGroups => [
        BarChartGroupData(
          x: 0,
          barRods: [
            BarChartRodData(
                y: fiveValue ?? 28,
                colors: [Colors.brown.shade200, Colors.greenAccent])
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 1,
          barRods: [
            BarChartRodData(
                y: fourValue ?? 32,
                colors: [Colors.brown.shade200, Colors.greenAccent])
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 2,
          barRods: [
            BarChartRodData(
                y: threeValue ?? 16,
                colors: [Colors.brown.shade200, Colors.greenAccent])
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 3,
          barRods: [
            BarChartRodData(
                y: twoValue ?? 65,
                colors: [Colors.brown.shade200, Colors.greenAccent])
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 4,
          barRods: [
            BarChartRodData(
                y: oneValue ?? 47,
                colors: [Colors.brown.shade200, Colors.greenAccent])
          ],
          showingTooltipIndicators: [0],
        ),
      ];
}
