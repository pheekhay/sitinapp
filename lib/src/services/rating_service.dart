import 'package:sitinapp/src/models/sitin_rating.dart';

abstract class RatingServiceInterface {
  double getTotalRating(List<SitInRating> ratings);
  Map<String, dynamic> totalWeights(List<SitInRating> ratings);
}

class RatingService implements RatingServiceInterface {
  @override
  double getTotalRating(List<SitInRating> ratings) {
    final weight = _totalWeight(ratings)["w"];
    final stars = _totalWeight(ratings)["stars"];
    final totalStars = _totalstars(stars);

    return weight / totalStars;
  }

  Map<String, dynamic> _totalWeight(List<SitInRating> ratings) {
    int totalof5s = 0;
    int totalof4s = 0;
    int totalof3s = 0;
    int totalof2s = 0;
    int totalof1s = 0;
    double total = 0;
    for (var rating in ratings) {
      if (rating.stars.toInt() == 5) {
        totalof5s++;
      } else if (rating.stars.toInt() == 4) {
        totalof4s++;
      } else if (rating.stars.toInt() == 3) {
        totalof3s++;
      } else if (rating.stars.toInt() == 2) {
        totalof2s++;
      } else if (rating.stars.toInt() == 1) {
        totalof1s++;
      }
    }

    total = 5.toDouble() * totalof5s +
        4.toDouble() * totalof4s +
        3.toDouble() * totalof3s +
        2.toDouble() * totalof2s +
        1.toDouble() * totalof1s;
    return {
      "w": total,
      "stars": [totalof1s, totalof2s, totalof3s, totalof4s, totalof5s]
    };
  }

  double _totalstars(List<double> stars) {
    double total = 0;
    for (var star in stars) {
      total += star;
    }
    return total;
  }

  @override
  Map<String, dynamic> totalWeights(List<SitInRating> ratings) {
    return _totalWeight(ratings);
  }
}
