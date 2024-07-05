import 'package:flutter/material.dart';
import 'package:valor_store/commons/widgets/circular_image.dart';

class ProfilePhoto extends StatelessWidget {
  final String photo;

  const ProfilePhoto({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return CircularImage(image: photo, width: 50, height: 50);
  }
}
