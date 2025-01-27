import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/repos/home_repo.dart';

part 'similar_books_cubit_state.dart';

class SimilarBooksCubitCubit extends Cubit<SimilarBooksCubitState> {
  SimilarBooksCubitCubit(this.homeRepo) : super(SimilarBooksCubitInitial());

  final HomeRepo homeRepo ;
  Future<void> fetchSimilarBooks({required String category}) async{
    emit(SimilarBooksCubitLoading());
    var result= await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure){
      emit(SimilarBooksCubitFailure(errmsg: failure.errmsg));
    }, (books){
      emit(SimilarBooksCubitSuccess(books: books));
    });
  }
}
