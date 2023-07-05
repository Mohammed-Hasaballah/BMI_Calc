import 'package:flutter/material.dart';

class MyFab extends StatelessWidget {
  const MyFab({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);
  final Function() onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints(minWidth: 30, minHeight: 30),
      padding: const EdgeInsets.all(8),
      fillColor: const Color(0xffe83d67),
      shape: const CircleBorder(),
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 30,
      ),
    );
  }
}
