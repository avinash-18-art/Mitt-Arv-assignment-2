import 'package:flutter/material.dart';
import '../models/movie.dart';
import 'favorite_button.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  MovieCard({required this.movie});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(movie.posterUrl),
      title: Text(movie.title),
      subtitle: Text('Year: ${movie.year}, IMDB: ${movie.imdbRating}'),
      trailing: FavoriteButton(movie: movie),
    );
  }
}
