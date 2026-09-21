import 'package:flutter/material.dart';
import 'package:workshop_flutter__4ei3/CardFilmItem.dart';
import 'package:workshop_flutter__4ei3/Movie.dart';
import 'package:workshop_flutter__4ei3/MovieDetail.dart';

class GStore extends StatefulWidget {
  const GStore({super.key});

  @override
  State<GStore> createState() => _GStoreState();
}

class _GStoreState extends State<GStore> {
  final List<Movie> movies = [
    Movie(
      image: "iceroad.jpg",
      title: "Ice Road",
      description:
          "A truck driver leads a rescue team on a dangerous ice road to reach trapped miners before their oxygen runs out.",
      price: 250,
    ),
    Movie(
      image: "thegrudge.jpg",
      title: "The grudge",
      description:
          "A house is cursed by a vengeful ghost that dooms those who enter it with a violent death.",
      price: 280,
    ),
    Movie(
      image: "HouseOfDead.jpg",
      title: "House Of Dead",
      description:
          "The House of the Dead and its 2022 remake take place in 1998, following AMS agents Thomas Rogan and G as they raid the mansion of Dr. Curien, a genetic engineer who went insane and has released creatures upon his own research team.",
      price: 300,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("G-STORE"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: movies.map((movie) {
            return CardFilmItem(
              image: movie.image,
              title: movie.title,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieDetail(movie: movie),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}