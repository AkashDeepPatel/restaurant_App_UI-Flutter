import 'package:flutter/material.dart';

class TopRatedMovies extends StatelessWidget {
  final List topRated;

  const TopRatedMovies({Key key, this.topRated}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(10, (index) {
        return Column(
          children: [
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://image.tmdb.org/t/p/w500' +
                        topRated[index]['poster_path']),
                  ),
                ),
                height: 200,
              ),
            ),
            SizedBox(height: 5),
            Container(
              child: Text(topRated[index]['title'] != null
                  ? topRated[index]['title']
                  : 'Loading'),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        );
      }),
    );
  }
}
