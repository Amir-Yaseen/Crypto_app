import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String text;
  final String url;
  const Section({
    Key? key,
    required this.text,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        Image.asset(
          url,
          width: 25,
        ),
      ],
    );
  }
}
