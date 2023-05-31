import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({
    required this.space,
    Key? key,
  }) : super(key: key);

  final double space;

  @override
  Widget build(BuildContext context) => SizedBox(width: space);
}

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({
    required this.space,
    Key? key,
  }) : super(key: key);

  final double space;

  @override
  Widget build(BuildContext context) => SizedBox(height: space);
}
