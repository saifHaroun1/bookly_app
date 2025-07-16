import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 18),
        SizedBox(width: 6.3),
        Text("4.9", style: Styles.textStyle16),
        SizedBox(width: 5),
        Text(
          "(245)",
          style: Styles.textStyle16.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
