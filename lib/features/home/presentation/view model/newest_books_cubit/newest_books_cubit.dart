import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo ;
  Future<void> fetchNewestBooks() async{
    emit(NewestBooksLoading());
    var result= await homeRepo.fetchnewestBooks();
    result.fold((failure){
      emit(NewestBooksFailure(errmsg: failure.errmsg));
    }, (books){
      emit(NewestBooksSuccess(books: books));
    });
  }
}
