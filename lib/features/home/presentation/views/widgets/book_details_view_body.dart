import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookdetailsAppBar(),
        ],
      ),
    );
  }
}

class CustomBookdetailsAppBar extends StatelessWidget {
  const CustomBookdetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.close),),
        IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined),),
      ],
    );
  }
}