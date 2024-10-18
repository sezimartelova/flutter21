
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key, required this.Image,
  });
  final String Image;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(Image,
    height:200);
    
  }
}
