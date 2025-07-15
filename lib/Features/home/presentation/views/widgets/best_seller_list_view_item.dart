import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {
          // Navigate to book details view
          GoRouter.of(context).push(AppRouter.kbookDetailsView);
        },
        child: Row(
          children: [
            Container(
              height: 120.h,
              width: 90.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(AssetsData.ala_5ota_elrasoul),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 30.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "عَلَى خُطَى الرَّسُولِ ﷺ",
                    style: Styles.playfairDisplay,
                  ),
                  SizedBox(height: 3.h),
                  Text("ادهم شرقاوي", style: Styles.textStyle14),

                  SizedBox(height: 3.h),
                  Row(
                    children: [
                      Text("\$19.99", style: Styles.textStyle18),
                      Spacer(),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
