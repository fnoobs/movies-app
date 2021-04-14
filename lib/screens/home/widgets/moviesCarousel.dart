import 'package:flutter/material.dart';
import 'package:movies_app/theme/contants.theme.dart';

const moviesList = [
  "assets/images/avengers-infinitywar.jpg",
  "assets/images/poc-horizontal.jpg",
  "assets/images/interstellar-horizontal.jpg",
];

class MoviesCarousel extends StatefulWidget {
  const MoviesCarousel({Key? key}) : super(key: key);

  @override
  _MoviesCarouselState createState() => _MoviesCarouselState();
}

class _MoviesCarouselState extends State<MoviesCarousel> {
  int idx = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Carousel(
            images: moviesList,
            handlePageChange: (index) {
              setState(() {
                idx = index;
              });
            },
          ),
          height: 230,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            moviesList.length,
            (index) => dashes(index),
          ),
        ),
      ],
    );
  }

  AnimatedContainer dashes(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: 20,
      height: 4,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: index == idx ? kPrimaryColor : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  const Carousel({
    Key? key,
    required this.handlePageChange,
    required this.images,
  }) : super(key: key);

  final Function(int) handlePageChange;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: images.length,
      onPageChanged: handlePageChange,
      itemBuilder: (BuildContext ctx, int index) {
        return Container(
          margin: const EdgeInsets.all(16),
          height: 250,
          decoration: const BoxDecoration(
            boxShadow: [
              const BoxShadow(
                blurRadius: 10,
                color: const Color(0XFFDDE2E6),
                offset: Offset(0, 10),
                spreadRadius: 1,
              )
            ],
          ),
          child: ClipRRect(
            child: Image.asset(
              images[index],
              fit: BoxFit.fitWidth,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        );
      },
    );
  }
}
