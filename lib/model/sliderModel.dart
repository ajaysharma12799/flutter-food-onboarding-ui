class SliderModel {
  late String imageAssetPath;
  late String title;
  late String description;

  SliderModel({
    required this.imageAssetPath,
    required this.title,
    required this.description,
  });

  // Setters
  // void setImagePath(String imageAssetPath) {
  //   this.imageAssetPath = imageAssetPath;
  // }

  // void setTitle(String title) {
  //   this.title = title;
  // }

  // void setDescription(String description) {
  //   this.description = description;
  // }

  // Getters
  String get getImagePath => imageAssetPath;
  String get getTitle => title;
  String get getDescription => description;
}
