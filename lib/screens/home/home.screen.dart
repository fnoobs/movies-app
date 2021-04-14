import 'package:flutter/material.dart';
import 'package:movies_app/screens/home/widgets/movieItem.dart';
import 'package:movies_app/screens/home/widgets/moviesCarousel.dart';
import 'package:movies_app/theme/contants.theme.dart';

const movies = [
  {
    "imageUrl": "assets/images/your-name-vertical.png",
    "name": "Your Name",
    "rating": "4.2",
    "genre": "Animation, Drama, Romance",
    "runtime": "1h 46min"
  },
  {
    "imageUrl": "assets/images/spiderman-vertical.jpg",
    "name": "Spider-Man",
    "rating": "4.3",
    "genre": " Animation, Action",
    "runtime": "1h 57min"
  },
  {
    "imageUrl": "assets/images/avengers-vertical.jpg",
    "name": "Avengers: Infinity War",
    "rating": "4.5",
    "genre": " Action, Adventure, Sci-Fi",
    "runtime": "2h 29min"
  }
];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movies',
          style: TextStyle(
            color: kTextColor,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: kTextColor,
            splashRadius: kIconButtonSplashRadius,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MoviesCarousel(),
            SizedBox(height: 40),
            ...List.generate(
              movies.length,
              (index) {
                return Column(
                  children: [
                    MovieItem(movies[index]),
                    SizedBox(height: 30),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
