import 'package:flutter/material.dart';

class IntroButton extends StatelessWidget {
  const IntroButton({
    super.key,
    required this.ontap,
    required this.icon,
    required this.width,
    required this.height, required this.circ,
  });
  final void Function() ontap;
  final Icon icon;
  final double width;
  final double height;
  final double circ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(circ),
        ),
        child: icon,
      ),
    );
  }
}
