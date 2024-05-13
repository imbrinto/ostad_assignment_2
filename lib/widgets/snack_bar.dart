import 'package:flutter/material.dart';

void snackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: const Text(
      'Congratulations! Checkout Successful.',
      style: TextStyle(
        color: Colors.black,
        fontFamily: 'Metropolis',
      ),
    ),
    backgroundColor: Colors.white,
    action: SnackBarAction(
      label: 'OK',
      onPressed: () {},
    ),
  ));
}
