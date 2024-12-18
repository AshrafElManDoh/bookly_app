import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomBookdetailsAppBar(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.18),
              child: const CustomBookItem(),
            ),
            const SizedBox(
              height: 43,
            ),
            const Text(
              'The Jungle Book',
              style: Styles.textStyle30,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                color: Colors.white.withOpacity(0.7),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            const BookRating(),
            const SizedBox(
              height: 36,
            ),
            const BookActions(),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "You can also like",
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SimilarBooksListView(),
            const SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}
