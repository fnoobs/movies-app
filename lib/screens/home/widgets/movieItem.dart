import 'package:flutter/material.dart';
import 'package:movies_app/theme/contants.theme.dart';

class MovieItem extends StatelessWidget {
  const MovieItem(this.movie, {Key? key}) : super(key: key);

  final Map<String, String> movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                const BoxShadow(
                  blurRadius: 10,
                  color: const Color(0XFFDDE2E6),
                  offset: Offset(0, 10),
                  spreadRadius: 1,
                )
              ],
            ),
            child: Image.asset(
              movie['imageUrl']!,
              height: 180,
              width: 100,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(width: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie['name']!,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontSize: 16,
                    ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.star_rounded, color: kStarColor),
                  Icon(Icons.star_rounded, color: kStarColor),
                  Icon(Icons.star_rounded, color: kStarColor),
                  Icon(Icons.star_rounded, color: kStarColor),
                  Icon(
                    Icons.star_outline_rounded,
                    color: kSecondaryColor,
                  ),
                  SizedBox(width: 5),
                  Text(
                    movie['rating']!,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: const Color(0XFF919294),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                movie['genre']!,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: kSecondaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Spacer(),
              Text(
                movie['runtime']!,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: kSecondaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
