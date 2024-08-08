import 'package:clone_netflix/model/model_movie.dart';
import 'package:clone_netflix/widget/box_slider.dart';
import 'package:clone_netflix/widget/carousel_slider.dart';
import 'package:clone_netflix/widget/circle_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': 'cats',
      'keyword': 'animal',
      'poster': 'cats.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': 'dog',
      'keyword': 'animal',
      'poster': 'dog.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': 'pig',
      'keyword': 'animal',
      'poster': 'pig.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': 'rabbit',
      'keyword': 'animal',
      'poster': 'rabbit.jpg',
      'like': false
    }),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movies: movies),
            TopBar(),
          ],
        ),
        CircleSlider(movies: movies),
        BoxSlider(movies: movies),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'images/writing.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'TV Program',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'Movie',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'Saved Content',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
