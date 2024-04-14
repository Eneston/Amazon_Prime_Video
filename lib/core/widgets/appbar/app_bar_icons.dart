import 'package:flutter/material.dart';
import 'package:flutter_amazon_prime_movie/core/screens/profile_screen.dart';
import 'package:flutter_amazon_prime_movie/utils/constants/colors.dart';
import 'package:get/get.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.connected_tv,
          color: Colors.white,
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () => Get.to(() => const ProfileScreen()),
          child: const CircleAvatar(
            radius: 15,
            backgroundColor: MyColors.circleAvatarBackGroundColor,
            child: Icon(Icons.person),
          ),
        ),
      ],
    );
  }
}
