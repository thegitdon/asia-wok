import 'dart:async';
import 'package:asia_wok/src/models/item_model_t.dart';
import 'package:asia_wok/src/resources/movie_api_provider_t.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
  /*
  Future<TrailerModel> fetchTrailers(int movieId) =>
      moviesApiProvider.fetchTrailer(movieId);
      */

  /**
       * We are importing the movie_api_provider.dart file and calling its fetchMovieList() method. This Repository class is the central point from where the data will flow to the BLOC.
       * 
       */
}
