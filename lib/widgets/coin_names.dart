import 'package:flutter/material.dart';

class CoinNames extends StatelessWidget {
  const CoinNames({
    Key? key,
    required this.coinslist,
    required this.index,
  }) : super(key: key);

  final List coinslist;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          coinslist[index].image,
          width: 35,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                coinslist[index].name,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                coinslist[index].symbol,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
