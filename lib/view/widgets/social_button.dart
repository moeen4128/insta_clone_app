import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const SocialButton({
    Key? key,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.grey),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Image(
          height: 24,
          width: 24,
          image: AssetImage(imagePath),
        ),
      ),
    );
  }
}
