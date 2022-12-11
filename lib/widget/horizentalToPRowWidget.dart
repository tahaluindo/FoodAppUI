
import 'package:flutter/material.dart';
class HorizentalScrollWidget extends StatelessWidget {
  final String url;

  const HorizentalScrollWidget({super.key, required this.url});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 50,
      decoration:
          BoxDecoration(color: Colors.blue.withOpacity(0.3), borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: Image.asset(
        "$url",
        width: 40,
        height: 40,
      )),
    );
  }
}
