import 'package:flutter/material.dart';

class DefultBotton extends StatelessWidget {
  DefultBotton(
      {super.key,
      required this.onTap,
      this.hight = 50,
      this.width = double.infinity,
      this.colors = const [Colors.amber, Colors.pink],
      this.radius = 20,
      this.child});
  void Function() onTap;
  double hight, radius;
  double? width;
  List<Color> colors;
  Widget? child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment:
            child == Text("data") ? Alignment.center : Alignment.centerLeft,
        height: hight,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: colors),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: child,
      ),
    );
  }
}
