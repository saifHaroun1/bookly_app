import 'package:flutter/material.dart';
import 'package:my_bookly_app/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(fit: BoxFit.contain, AssetsData.logo),
        Text(textAlign: TextAlign.center, "Reed Free Books"),
      ],
    );
  }
}
