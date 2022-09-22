import 'package:flutter/material.dart';

class CustomSmallCard extends StatelessWidget {
  final String text;
  final String url;
  const CustomSmallCard({
    Key? key,
    required this.text,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          url,
          width: 30,
          color: Colors.grey,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.grey, fontSize: 15),
        )
      ],
    );
  }
}
