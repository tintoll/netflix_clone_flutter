import 'package:flutter/material.dart';
import 'package:flutter_netflix/screen/DetailScreen.dart';

import '../model/model_movie.dart';

class CircleSlider extends StatelessWidget {
  final List<Movie> movies;

  const CircleSlider({Key key, this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('미리보기'),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeCircleImages(context, movies),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeCircleImages(BuildContext context, List<Movie> movies) {
  List<Widget> result = [];

  for (var i = 0; i < movies.length; i++) {
    result.add(InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) {
              return DetailScreen(
                  movie: movies[i]);
            }));
      },
      child: Container(
        padding: EdgeInsets.only(right: 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: CircleAvatar(
            backgroundImage: AssetImage('images/' + movies[i].poster),
            radius: 48,
          ),
        ),
      ),
    ));
  }

  return result;
}
