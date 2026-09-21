import 'package:flutter/material.dart';

class CardFilmItem extends StatelessWidget {
  final String image, title;
  final VoidCallback? onTap;

  const CardFilmItem({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/" + image,
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(Icons.star, color: Colors.amber, size: 27),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}