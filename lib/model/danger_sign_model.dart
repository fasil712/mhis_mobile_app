class DangerSignModel {
  DangerSignModel({
    required this.name,
    required this.image,
    required this.description,
  });
  late final String name;
  late final String image;
  late final String description;

  DangerSignModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['image'] = image;
    _data['description'] = description;
    return _data;
  }
}
