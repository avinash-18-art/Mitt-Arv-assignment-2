import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../widgets/movie_card.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Movie> favoriteMovies;

  FavoritesScreen({required this.favoriteMovies});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Movies'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: favoriteMovies.length,
          itemBuilder: (context, index) {
            final movie = favoriteMovies[index];
            return MovieCard(movie: movie);
          },
        ),
      ),
    );
  }
}
