import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/custom_error_msg.dart';
import 'package:bookly_app/core/utils/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/view%20model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                      onTap: () => GoRouter.of(context)
                          .push(AppRouter.bookDetailsView, extra: state.books[index]),
                      child: CustomBookItem(
                        imageURL: state
                            .books[index].volumeInfo!.imageLinks!.thumbnail!,
                      )),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorMsg(errmsg: state.errmsg);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
