import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/theme/app_image.dart';
import 'package:ostad_assignment_2/widgets/navigation_bar.dart';
import 'package:ostad_assignment_2/widgets/product_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            ProductContainer(photoLink: AppImage.img1, productPrice: 51),
            const SizedBox(
              height: 10,
            ),
            ProductContainer(photoLink: AppImage.img2, productPrice: 30),
            const SizedBox(
              height: 10,
            ),
            ProductContainer(photoLink: AppImage.img3, productPrice: 43),
          ],
        ),
        bottomNavigationBar: NavigationBarHome(
          buttonText: 'CHECK OUT',
          context: context,
        ));
  }
}
