import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class CustomFavCard extends StatelessWidget {
  final double width;
  final double height;
  final String name;
  final double percentage;
  final double price;
  final String abbrevation;
  final String image;
  final List<double> sparkline;
  const CustomFavCard({
    Key? key,
    required this.width,
    required this.height,
    required this.name,
    required this.percentage,
    required this.price,
    required this.abbrevation,
    required this.image,
    required this.sparkline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: const Color.fromRGBO(49, 49, 49, 0.9),
        child: SizedBox(
          height: height,
          width: width,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        '${percentage.toStringAsFixed(2)}%',
                        style: const TextStyle(
                            color: Colors.amber, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SfSparkLineChart(
                    data: sparkline,
                    color: Colors.amber,
                    width: 1,
                    axisLineColor: Colors.transparent,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(
                        image,
                        width: 35,
                      ),
                      Column(
                        children: [
                          Text(
                            abbrevation.toUpperCase(),
                            style: const TextStyle(
                                color: Color.fromARGB(221, 182, 182, 182)),
                          ),
                          Text(
                            '\$${price.toString()}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )),
        ));
  }
}
