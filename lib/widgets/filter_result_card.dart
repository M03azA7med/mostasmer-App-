import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FiltterCard extends StatelessWidget {
  final String name;
  final String image;
  final String ratio;

  FiltterCard({required this.name, required this.image, required this.ratio});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 200), // Example constraint
      child: Row(
        children: [
          Material(
            borderRadius: BorderRadius.circular(5),
              elevation: 2,
              child: Image.network(
                  image, width: 100, height: 50
              ),
          ), // Add size constraints
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
              Text("Up to $ratio%", style: const TextStyle(color: Colors.red, fontSize: 14),),
            ],
          ),
        ],
      ),
    );
  }
}
