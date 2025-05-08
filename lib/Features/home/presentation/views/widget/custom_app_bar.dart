import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly_app/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100.w,
          height: 100.h,
          child: Image.asset(AssetsData.logo),
        ),
        SizedBox(width: 180.w),
        Icon(FontAwesomeIcons.magnifyingGlass, size: 25.sp),
      ],
    );
  }
}
