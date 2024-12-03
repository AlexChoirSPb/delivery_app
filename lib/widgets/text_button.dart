import 'package:flutter/material.dart';

class TextMainButton extends StatelessWidget {
  const TextMainButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontFamily: "Inter",
      fontWeight: FontWeight.w800,
      fontSize: 20,
      letterSpacing: -0.32,
      height: 1.1,
      color: Colors.white,
    );

    var buttonStyle = ElevatedButton.styleFrom(
      minimumSize: const Size(double.infinity, 70),
      backgroundColor: const Color.fromRGBO(243, 123, 45, 1),
      elevation: 0,
    );
    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
