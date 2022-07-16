class DietDetialModel {
  DietDetialModel({
    required this.name,
    required this.description,
    required this.picture,
  });
  late final String name;
  late final String description;
  late final String picture;
  
  DietDetialModel.fromJson(Map<String, dynamic> json){
    name = json['name'];
    description = json['description'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['description'] = description;
    _data['picture'] = picture;
    return _data;
  }
}