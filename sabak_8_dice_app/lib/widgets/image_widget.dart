
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    // ignore: non_constant_identifier_names
    super.key, required this.Image,
  });
  // ignore: non_constant_identifier_names
  final String Image;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(Image,
    height:200);
    
  }
}
