part of 'similar_books_cubit_cubit.dart';

sealed class SimilarBooksCubitState {
  const SimilarBooksCubitState();

}

final class SimilarBooksCubitInitial extends SimilarBooksCubitState {}
final class SimilarBooksCubitLoading extends SimilarBooksCubitState {}
final class SimilarBooksCubitFailure extends SimilarBooksCubitState {
  final String errmsg;

  SimilarBooksCubitFailure({required this.errmsg});
}
final class SimilarBooksCubitSuccess extends SimilarBooksCubitState {
  final List<BookModel> books ;

  SimilarBooksCubitSuccess({required this.books});
}
