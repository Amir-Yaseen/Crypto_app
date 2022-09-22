import 'package:flutter/material.dart';

import 'customsmallcard.dart';

class CustomBigCard extends StatelessWidget {
  const CustomBigCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Color.fromRGBO(49, 49, 49, 0.9),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomSmallCard(
              text: 'Deposit',
              url: 'asset/image/deposit.png',
            ),
            Container(
              width: 1,
              height: 50,
              color: Colors.grey,
            ),
            const CustomSmallCard(
              text: 'Withdraw',
              url: 'asset/image/money.png',
            ),
            Container(
              width: 1,
              height: 50,
              color: Colors.grey,
            ),
            const CustomSmallCard(
              text: 'Analysis',
              url: 'asset/image/analysis.png',
            )
          ],
        ),
      ),
    );
  }
}
