import 'package:flutter/material.dart';
import '../model/coin_gecko_model.dart';
import 'coin_names.dart';

class CoinListView extends StatelessWidget {
  CoinListView({Key? key, required this.coinslist, required this.index})
      : super(key: key);

  final List<dynamic> coinslist;
  int index;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: const Color.fromRGBO(49, 49, 49, 0.9),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CoinNames(coinslist: coinslist, index: index),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$${coinslist[index].currentPrice}",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${coinslist[index].athChangePercentage.toStringAsFixed(1)}",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
