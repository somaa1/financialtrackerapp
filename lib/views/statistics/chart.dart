
import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatefulWidget {

  Chart({Key? key, }) : super(key: key);

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 300,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: <SplineSeries<SalesData, String>>[
          SplineSeries<SalesData, String>(
            color: Color.fromARGB(255, 47, 125, 121),
            width: 3,
            dataSource: <SalesData>[
            SalesData(100,"mon", ),
            SalesData(23,"Tue", ),
            SalesData(89,"Wen", ),
            SalesData(131,"sun", )
            ],
            xValueMapper: (SalesData sales, _) => sales.year,
            yValueMapper: (SalesData sales, _) => sales.sales,
          )
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.sales, this.year);
  final String year;
  final int sales;
}
