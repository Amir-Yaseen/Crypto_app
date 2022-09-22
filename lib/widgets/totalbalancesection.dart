import 'package:flutter/material.dart';

class TotalBalanceSection extends StatelessWidget {
  const TotalBalanceSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Total Balance',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          '\$40000.00',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 2),
          width: 150,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            '4,5566(18.73%)',
            style: TextStyle(fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
