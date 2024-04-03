import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final double size;
  final Color color;
  final Gradient? gradient;

  const CalculatorButton({
    required this.label,
    required this.size,
    required this.color,
    required this.onTap,
    this.gradient,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double br = 9;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(size / 2), // make button circular
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(size / 2), // make button circular
          color: color,
        ),
        child: Center(
          child: Text(
            label,
            style: Theme.of(context).textTheme.headline6?.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ),
      ),
    );
  }
}
