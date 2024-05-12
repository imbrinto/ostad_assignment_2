import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/widgets/alert_box_button.dart';

class AlertBox extends StatelessWidget {
  final String buttonText;
  BuildContext context;
  AlertBox({super.key, required this.buttonText, required this.context,}) {

  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text('Congratulations',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      content: Container(
        height: 80,
        width: 80,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [

              Text('You have added 5 T-shirt on your bag!',
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
      contentPadding: EdgeInsets.all(30),
      actions: [
        AlertBoxButton(buttonText: buttonText, context: context,)
      ],
    );;
  }
}
