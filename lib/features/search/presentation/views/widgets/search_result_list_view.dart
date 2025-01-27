import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const BestSellerListViewItem(book: BookModel(),);
      },
      itemCount: 10,
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
    );
  }
}
