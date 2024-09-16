import 'package:flutter/material.dart';

class MovieReleasesCart extends StatelessWidget {
  final String imageName;

  const MovieReleasesCart({
    super.key,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageName,
            width: double.infinity,
            height: 190,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
