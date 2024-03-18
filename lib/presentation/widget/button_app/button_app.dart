import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  final double width;
  final double height;
  final Color? backgroundColor=Colors.white;
  final TextStyle? textStyle;
  final  double? elevation;
  final Color shadowColor;
  final BorderRadiusGeometry borderRadius;
  const ButtonApp({Key? key, this.onPressed, required this.child, required this.width, required this.height, this.textStyle, this.elevation,  this.shadowColor=Colors.black, required this.borderRadius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        maximumSize: Size(width, height),
        backgroundColor:backgroundColor,
        textStyle: textStyle,
        elevation: elevation,
        shadowColor: shadowColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius
        )



      ),
        child: child,
    );
  }
}
