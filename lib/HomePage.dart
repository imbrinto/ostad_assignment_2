import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/widgets/product_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(20),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
            const Text(
              "My Bag",
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            const SizedBox(height: 25,),
            ProductContainer(),
          ],

      ),
    );
  }
}
