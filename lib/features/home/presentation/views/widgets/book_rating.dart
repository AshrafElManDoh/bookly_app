import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.count, required this.rating});
  final int count ;
  final num rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          "$rating",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "($count)",
          style: Styles.textStyle14.copyWith(
            color: Colors.white.withOpacity(0.5),
          ),
        )
      ],
    );
  }
}
