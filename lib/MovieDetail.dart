import 'package:flutter/material.dart';
import 'Movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;

  const MovieDetail({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    movie.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  "assets/images/" + movie.image,
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                movie.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "${movie.price.toStringAsFixed(0)} DT",
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 18),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("${movie.title} ajouté au panier")),
                    );
                  },
                  icon: const Icon(Icons.shopping_cart, color: Colors.white),
                  label: const Text(
                    "Acheter",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 14,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}