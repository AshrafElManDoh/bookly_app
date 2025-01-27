import 'package:bookly_app/core/utils/custom_error_msg.dart';
import 'package:bookly_app/core/utils/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/view%20model/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return BestSellerListViewItem(
                book: state.books[index],
              );
            },
            itemCount: 10,
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorMsg(errmsg: state.errmsg);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
