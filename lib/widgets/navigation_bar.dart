import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/widgets/button.dart';

class NavigationBarHome extends StatefulWidget {
  final String buttonText;
  BuildContext context;
  NavigationBarHome({super.key,required this.buttonText, required this.context});

  @override
  State<NavigationBarHome> createState() => _NavigationBarHomeState();
}

class _NavigationBarHomeState extends State<NavigationBarHome> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 100,
      color: Colors.grey.shade200,
      child: Column(
        children: [
          Row(
            children: [
              Text('Total amount:',style: TextStyle(
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),),
              Spacer(),
              Text("128\$",style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.bold
              ),)
            ],
          ),
          Spacer(),
          Button(buttonText: widget.buttonText, context: context)
        ],
      ),
    );
  }
}
