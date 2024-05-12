import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AlertBoxButton extends StatefulWidget {
  final String buttonText;
  BuildContext context;
  AlertBoxButton({super.key, required this.buttonText, required this.context,});

  @override
  State<AlertBoxButton> createState() => _ButtonState();
}

class _ButtonState extends State<AlertBoxButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7)),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(
          fixedSize: Size(MediaQuery.sizeOf(context).width, 45),
          backgroundColor: HexColor('#DB3022'),
        ),
        child: Text(
          widget.buttonText,
          style:  const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontFamily: 'Metropolis'
          ),
        ),
      ),
    );
  }
}