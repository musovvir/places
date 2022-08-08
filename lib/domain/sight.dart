class Sight {
  final String name;
  final String url;
  final String details;
  final String type;
  final String workingTime;
  final String? visit;
  final String? lat;
  final String? lon;

  Sight({
    required this.name,
    required this.url,
    required this.details,
    required this.type,
    required this.workingTime,
    this.visit,
    this.lat,
    this.lon,
  });
}
