import 'package:crypto_app/widgets/coin_names.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {Key? key,
      required this.coinlist,
      required this.index,
      required this.sprakline})
      : super(key: key);
  final List<dynamic> coinlist;
  final int index;
  final List<double> sprakline;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CoinNames(coinslist: coinlist, index: index),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              // Container(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       const TopButton(
              //         color: Color.fromRGBO(
              //           49,
              //           49,
              //           49,
              //           0.9,
              //         ),
              //         text: 'Chart',
              //       ),
              //       const TopButton(
              //         color: Colors.transparent,
              //         text: 'Book',
              //       ),
              //       Row(
              //         children: [
              //           Container(
              //             width: 1,
              //             color: const Color.fromRGBO(
              //               49,
              //               49,
              //               49,
              //               0.9,
              //             ),
              //             child: Text(''),
              //           ),
              //           const TopButton(
              //             color: Colors.transparent,
              //             text: 'Depth',
              //           ),
              //         ],
              //       )
              //     ],
              //   ),
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(5),
              //       border: Border.all(
              //           style: BorderStyle.solid,
              //           width: 1,
              //           color: const Color.fromRGBO(49, 49, 49, 0.9))),
              // ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 30),
                child: Column(
                  children: [
                    Text(
                      "\$${coinlist[index].currentPrice.toString()}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        width: 100,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          (coinlist[index].athChangePercentage).toString(),
                          style: const TextStyle(fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SfSparkLineChart(
                data: sprakline,
                color: Colors.amber,
                width: 1,
                axisLineColor: Colors.transparent,
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                height: 250,
                child: Card(
                  shadowColor: Colors.grey[700],
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Market Cap:\$${coinlist[index].marketCap.toString()}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Divider(
                        height: 1,
                        color: Colors.grey,
                      ),
                      Text(
                        'Market Cap Rank:${coinlist[index].marketCapRank.toString()}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Divider(
                        height: 1,
                        color: Colors.grey,
                      ),
                      Text(
                        'High 24h Price:\$${coinlist[index].high24H.toString()}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Divider(
                        height: 1,
                        color: Colors.grey,
                      ),
                      Text(
                        'Low 24h Price:\$${coinlist[index].low24H.toString()}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopButton extends StatelessWidget {
  final Color color;
  final String text;
  const TopButton({
    required this.color,
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 15, color: Color.fromARGB(255, 207, 207, 207)),
        ),
      ),
    );
  }
}
