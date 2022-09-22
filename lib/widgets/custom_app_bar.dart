import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          child: Image.asset('asset/image/panda.png'),
        ),
        SizedBox(
            width: 30,
            child: Image.asset(
              'asset/image/menu.png',
              color: Colors.grey,
            ))
      ],
    );
  }
}
