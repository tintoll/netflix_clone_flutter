class Movie {
  final String title;
  final String keyworkd;
  final String poster;
  final bool like;

  Movie.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        keyworkd = map['keyworkd'],
        poster = map['poster'],
        like = map['like'];

  @override
  String toString() {
    return "Movie<$title:$keyworkd>";
  }
}