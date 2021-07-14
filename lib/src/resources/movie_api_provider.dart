import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/item_model.dart';

class MovieApiProvider {
  Client client = Client();
  final Uri baseUri = Uri.parse('https://api.themoviedb.org/3/movie/popular?api_key=90d4e9aa96fd51e6b0e3d91a2ca67dc9');
  Future<ItemModel> fetchMovieList() async {
    print('Fetching...');
    final response = await client.get(baseUri);
    print(response.body.toString());
    if(response.statusCode == 200){
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load the API');
    }
  }
}