import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Rated Movies'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 5, // Display only 5 movies initially
          itemBuilder: (context, index) {
            // Replace with actual movie data fetched from API
            return MovieCard(movie: /* Movie data */);
          },
        ),
      ),
    );
  }
}
