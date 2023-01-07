class CarouselModel {
  final int id;
  final String name;
  final String img;
  final String description;

  const CarouselModel({
    required this.id,
    required this.name,
    required this.img,
    required this.description,
  });

  factory CarouselModel.fromJson(Map<String, dynamic> json) => CarouselModel(
        id: json["id"],
        name: json["name"],
        img: json["img"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "img": img,
        "description": description,
      };

  CarouselModel copy() => CarouselModel(
        id: id,
        name: name,
        img: img,
        description: description,
      );
}
