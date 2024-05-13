import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/theme/app_image.dart';
import 'package:ostad_assignment_2/widgets/image_container.dart';
import 'package:ostad_assignment_2/widgets/product_details.dart';

class ProductContainer extends StatelessWidget {
  final photoLink;
  final int productPrice;

  const ProductContainer(
      {super.key, required this.photoLink, required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ImageContainer(photoLink: photoLink),
          const ProductDetails(
            productName: 'Pullover',
            productColor: 'Black',
            productSize: 'L',
            productPrice: 51,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
                const Spacer(),
                Text(
                  '$productPrice\$',
                  style: const TextStyle(
                      fontFamily: 'Metropolis', fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
