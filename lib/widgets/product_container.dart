import 'package:flutter/material.dart';

class ProductContainer extends StatefulWidget {
  const ProductContainer({super.key});

  @override
  State<ProductContainer> createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width, // Set the width to 100 pixels
      height: 100,
      child: Row(
          children: [
            Text('Box1'),
          ]
      ),
      decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(7)
      ),
    );
  }
}
