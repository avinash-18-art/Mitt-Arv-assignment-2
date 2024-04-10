// Replace with actual API calls to fetch movie data
class MovieService {
  static Future<List<Movie>> fetchMovies() async {
    // Simulate fetching movie data
    await Future.delayed(Duration(seconds: 2));
    return List.generate(
      5,
      (index) => Movie(
        title: 'Movie ${index + 1}',
        posterUrl: 'https://via.placeholder.com/150', // Placeholder image URL
        year: 2022 - index,
        imdbRating: 7.5 + index * 0.1,
      ),
    );
  }
}
