class PlanetsModal {
  String? position;
  String? name;
  String? image;
  String? year;
  String? type;
  String? radius;
  String? velocity;
  String? distance;
  String? description;

  PlanetsModal({
    this.position,
    this.name,
    this.image,
    this.year,
    this.type,
    this.radius,
    this.velocity,
    this.distance,
    this.description,
  });

  factory PlanetsModal.fromJson(Map<String, dynamic> json) {
    return PlanetsModal(
      position: json['position'],
      name: json['name'],
      image: json['image'],
      year: json['year'],
      type: json['type'],
      radius: json['radius'],
      velocity: json['velocity'],
      distance: json['distance'],
      description: json['description'],
    );
  }
}
