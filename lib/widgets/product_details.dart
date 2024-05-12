import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ostad_assignment_2/widgets/alert_box.dart';
import 'package:ostad_assignment_2/widgets/alert_box_button.dart';
import 'package:ostad_assignment_2/widgets/button.dart';
import 'package:ostad_assignment_2/widgets/snack_bar.dart';

class ProductDetails extends StatefulWidget {
  final String productName;
  final String productColor;
  final String productSize;
  final int productPrice;
  const ProductDetails({
    super.key,
    required this.productName,
    required this.productColor,
    required this.productSize,
    required this.productPrice
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int itemNumber = 0;

  void increment(){

    setState(() {
      if(itemNumber+1 == 5){
        showDialog(
            context: context,
            builder: (BuildContext context){
              return AlertBox(buttonText: 'Okay', context: context);
        });
      }
      itemNumber++;
    });
  }
  void decrement(){
    setState(() {
      if (itemNumber > 0) {
        itemNumber--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 2, 0),
        child: Text(
          widget.productName,
          style: const TextStyle(
              fontWeight: FontWeight.w600, fontFamily: "Metropolis"),
        ),
      ),
      Container(
          padding: const EdgeInsets.fromLTRB(10, 2, 2, 0),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                  color: Colors.grey, fontSize: 9.0, fontFamily: 'Metropolis'),
              children: [
                const TextSpan(
                  text: 'Colors: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text: '${widget.productColor}  ',
                    style: const TextStyle(
                      color: Colors.black,
                    ) //fontWeight: FontWeight.w500),
                ),
                const TextSpan(
                  text: 'Size: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                    text: widget.productSize,
                    style: const TextStyle(
                      color: Colors.black,
                    ) //fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Row(
          children: [
            GestureDetector(
              onTap: (){
                decrement();
              },
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.10),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 5),
                      )
                    ]),
                child: const Center(
                  child: Icon(Icons.remove),
                ),
              ),
            ),
            Text('  ${itemNumber.toString()}  '),
            GestureDetector(
              onTap: () {
                increment();
              },
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.10),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 5),
                      )
                    ]),
                child: const Center(
                  child: Icon(Icons.add),
                ),
              ),
            ),
             // const Spacer(),
            // Text('d')
          ],
        ),
      )
    ]);
  }
}




