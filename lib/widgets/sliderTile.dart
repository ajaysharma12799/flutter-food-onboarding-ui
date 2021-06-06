import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliderTile extends StatelessWidget {
  final String imageAssetPath, title, description;
  SliderTile({
    required this.imageAssetPath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.white,
            width: (MediaQuery.of(context).size.width) * 1,
            height: (MediaQuery.of(context).size.width) * 1,
            child: SvgPicture.asset(
              imageAssetPath,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 0,
              bottom: 0,
              left: 20.0,
              right: 20.0,
            ),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
