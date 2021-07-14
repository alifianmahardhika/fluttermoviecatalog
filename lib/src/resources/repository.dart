import 'dart:async';
import 'movie_api_provider.dart';
import '../models/item_model.dart';

class Repository{
  final moviesAPIProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesAPIProvider.fetchMovieList();
}