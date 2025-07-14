import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: 130.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(AssetsData.ala_5ota_elrasoul),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
