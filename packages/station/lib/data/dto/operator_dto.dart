import 'package:station/domain/models/operator.dart';

class OperatorDto {
  final String name;
  final String website;
  final String? country;

  OperatorDto({
    required this.name,
    required this.website,
    this.country,
  });

  factory OperatorDto.fromJson(Map<String, dynamic> json) => OperatorDto(
        name: json["name"],
        website: json["website"],
        country: json["country"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "website": website,
        "country": country,
      };
}

extension OperatorDtoExtension on OperatorDto {
  Operator toOperator() {
    return Operator(
      name,
      website,
      country,
    );
  }
}
