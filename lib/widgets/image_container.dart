import 'package:flutter/cupertino.dart';

class ImageContainer extends StatelessWidget {
  final photoLink;
  const ImageContainer({super.key, required this.photoLink});

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.only(right: 10),
    width: 90,
    decoration: BoxDecoration(
        image: photoLink,),
    );
  }
}
