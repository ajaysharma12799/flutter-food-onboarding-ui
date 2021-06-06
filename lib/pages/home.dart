import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/data/data.dart';
import 'package:flutter_onboarding_ui/widgets/sliderTile.dart';
import 'package:flutter_onboarding_ui/model/sliderModel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<SliderModel> _slidesList = [];
  int currentIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    _slidesList = getSlides();
  }

  Widget pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: _slidesList.length,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        itemBuilder: (context, index) {
          return SliderTile(
            imageAssetPath: _slidesList[index].getImagePath,
            title: _slidesList[index].getTitle,
            description: _slidesList[index].getDescription,
          );
        },
      ),
      bottomSheet: currentIndex != _slidesList.length - 1
          ? Container(
              height: (MediaQuery.of(context).size.height) * 0.08,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _pageController.animateToPage(
                        _slidesList.length - 1,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.linear,
                      );
                    },
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      for (int i = 0; i < _slidesList.length; i++)
                        currentIndex == i
                            ? pageIndexIndicator(true)
                            : pageIndexIndicator(false),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      _pageController.animateToPage(
                        currentIndex + 1,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.linear,
                      );
                    },
                    child: Text(
                      "NEXT",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height) * 0.08,
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text(
                "Get Started Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    );
  }
}
