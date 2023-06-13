import 'package:station/domain/models/review.dart';

class ReviewDto {
  final int rating;
  final int count;

  ReviewDto({
    required this.rating,
    required this.count,
  });

  factory ReviewDto.fromJson(Map<String, dynamic> json) => ReviewDto(
        rating: json["rating"],
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "rating": rating,
        "count": count,
      };
}

extension ReviewDtoExtension on ReviewDto {
  Review toReview() {
    return Review(
      rating,
      count,
    );
  }
}
