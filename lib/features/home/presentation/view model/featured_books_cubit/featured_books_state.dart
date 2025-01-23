part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState  {
  const FeaturedBooksState();

 
}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {}
class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
}
class FeaturedBooksFailure extends FeaturedBooksState {
  final String errmsg ;

  const FeaturedBooksFailure({required this.errmsg});

}
