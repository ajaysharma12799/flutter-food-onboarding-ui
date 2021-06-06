import 'package:flutter_onboarding_ui/model/sliderModel.dart';

List<SliderModel> getSlides() {
  List<SliderModel> _sliderModelList = [];

  // 1
  SliderModel sliderModel = new SliderModel(
      imageAssetPath: "asset/image/Chef.svg",
      title: "Chef",
      description: "I Cook Delecious Food For People With My Love");
  _sliderModelList.add(sliderModel);

// 2
  sliderModel = new SliderModel(
      imageAssetPath: "asset/image/cooking.svg",
      title: "Cooking",
      description:
          "Beautiful Food is Being Cooked By Our Chefs and Lot's Of Love");
  _sliderModelList.add(sliderModel);

  // 3
  sliderModel = new SliderModel(
      imageAssetPath: "asset/image/Hamburger.svg",
      title: "Hamburger",
      description:
          "God Sake This Delecious Veg Hamburger is Very Cool and Very Tasty to Eat");
  _sliderModelList.add(sliderModel);

  return _sliderModelList;
}
