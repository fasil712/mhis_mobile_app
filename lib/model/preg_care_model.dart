class PregnancyCareModel {
  PregnancyCareModel({
    required this.title,
    required this.image,
    required this.description,
  });
  late final String title;
  late final String image;
  late final String description;
  
  PregnancyCareModel.fromJson(Map<String, dynamic> json){
    title = json['title'];
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['image'] = image;
    _data['description'] = description;
    return _data;
  }
}