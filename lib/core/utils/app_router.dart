import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/repos/home_repo_implementation.dart';
import 'package:bookly_app/features/home/presentation/view%20model/similar_books_cubit/similar_books_cubit_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeView = "/homeView";
  static const searchView = "/searchView";
  static const bookDetailsView = "/bookDetailsView";
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: homeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: searchView,
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: bookDetailsView,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubitCubit(getIt.get<HomeRepoImplementation>()),
        child: BookDetailsView(
          book: state.extra as BookModel,
        ),
      ),
    ),
  ]);
}
