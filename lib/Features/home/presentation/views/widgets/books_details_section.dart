import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: CustomBookImage(),
        ),
        SizedBox(height: 18.h),
        Text(
          "عَلَى خُطَى الرَّسُولِ ﷺ",
          style: Styles.playfairDisplay30.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 2.h),
        Opacity(
          opacity: 1,
          child: Text(
            "ادهم شرقاوي",
            style: Styles.playfairDisplay.copyWith(
              color: Color(0xFF707070),
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 8.h),
        BookRating(),
        SizedBox(height: 23.h),
        BooksAction(),
      ],
    );
  }
}
