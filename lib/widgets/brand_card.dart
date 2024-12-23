// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class BrandCard extends StatelessWidget {
//   final String image;
//   final String Name;
//   const BrandCard({super.key, required this.image, required this.Name,});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Image.asset("$image",
//         width:MediaQuery.of(context).size.width*0.25,
//
//          ),
//         Text("$Name"),
//         Text("Up to 12.00%",style: TextStyle(
//           color: Colors.red
//         ),),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String? image; // Nullable for dynamic URLs
  final String name;
  final String? ratio; // Added dynamic ratio

  const BrandCard({
    super.key,
    this.image,
    required this.name,
     this.ratio,
  });

  @override
  Widget build(BuildContext context) {
    return Column( // Use Column to stack the image and text vertically
      crossAxisAlignment: CrossAxisAlignment.start, // Center the content
      children: [
        // Clip the image with a border radius
        ClipRRect(
          borderRadius: BorderRadius.circular(12), // Adjust the radius here
          child: image != null
              ? Image.network(
            image!,
            width: MediaQuery.of(context).size.width * 0.25,
            height: 50,
            fit: BoxFit.cover,
          )
              : const Icon(Icons.image_not_supported, size: 70),
        ),
        const SizedBox(height: 8), // Space between image and text
        SizedBox(
          width: 100,
          child: Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 4), // Space between name and ratio text
        Text(
          "Up to $ratio%",
          style: const TextStyle(color: Colors.red, fontSize: 14),
        ),
        const SizedBox(height: 12),

      ],
    );
  }
}

