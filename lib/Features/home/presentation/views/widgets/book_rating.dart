import 'package:bookly/core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.reviewsCount});
  final MainAxisAlignment mainAxisAlignment;
  final int rating ;
  final int reviewsCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xFFFFDD4F),
        ),
        const SizedBox(width: 6.3),
         Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        Opacity(
          opacity: .5,
          child: Text(
            '($reviewsCount)',
            style: Styles.textStyle14.copyWith(),
          ),
        )
      ],
    );
  }
}
