import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/theme/app_image.dart';
import 'package:ostad_assignment_2/widgets/button.dart';
import 'package:ostad_assignment_2/widgets/image_container.dart';
import 'package:ostad_assignment_2/widgets/navigation_bar.dart';
import 'package:ostad_assignment_2/widgets/product_container.dart';
import 'package:ostad_assignment_2/widgets/product_details.dart';


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
            Container(
            height: 100,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.10),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 5),
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ImageContainer(photoLink: AppImage.img1),
                const ProductDetails(productName: 'Pullover', productColor: 'Black', productSize: 'L'),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                      ),
                      Spacer(),
                      Text('51\$',style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                )
              ],
            ),
          ),
            const SizedBox(height: 10,),
            Container(
            height: 100,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.10),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 5),
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ImageContainer(photoLink: AppImage.img2),
                const ProductDetails(productName: 'T-Shirt', productColor: 'Grey', productSize: 'L'),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                      ),
                      Spacer(),
                      Text('30\$',style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                )
              ],
            ),
          ),
            const SizedBox(height: 10,),
            Container(
            height: 100,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.10),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 5),
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ImageContainer(photoLink: AppImage.img3),
                const ProductDetails(productName: 'Short Dress', productColor: 'Black', productSize: 'M'),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                      ),
                      Spacer(),
                      Text('43\$',style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBarHome(buttonText: 'CHECK OUT', context: context)
    );
  }
}
