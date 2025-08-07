class Reviews {
  final int id;
  final int numberOfReviews;
  final int score;

  Reviews({
    required this.id,
    required this.numberOfReviews,
    required this.score,
  });

  // Factory constructor to create a Reviews instance from a map
  factory Reviews.fromMap(Map<String, dynamic> map) {
    return Reviews(
      id: map['id'] as int,
      numberOfReviews: map['numberOfReviews'] as int,
      score: map['score'] as int,
    );
  }
}
