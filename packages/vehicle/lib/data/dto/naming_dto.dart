import '../../domain/models/naming.dart';

class NamingDto {
  final String make;
  final String model;
  final String? version;
  final dynamic edition;
  final String chargetripVersion;

  NamingDto({
    required this.make,
    required this.model,
    this.version,
    this.edition,
    required this.chargetripVersion,
  });

  factory NamingDto.fromJson(Map<String, dynamic> json) => NamingDto(
        make: json["make"],
        model: json["model"],
        version: json["version"],
        edition: json["edition"],
        chargetripVersion: json["chargetrip_version"],
      );

  Map<String, dynamic> toJson() => {
        "make": make,
        "model": model,
        "version": version,
        "edition": edition,
        "chargetrip_version": chargetripVersion,
      };
}

extension NamingExtesion on NamingDto {
  Naming toNaming() {
    return Naming(
      make,
      model,
      version,
      edition,
      chargetripVersion,
    );
  }
}
