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

class BrandListCard extends StatelessWidget {
  final String? image; // Nullable for dynamic URLs
  final String name;
  final String ratio; // Added dynamic ratio

  const BrandListCard({
    super.key,
    this.image,
    required this.name,
    required this.ratio,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Clip the image with a border radius and add shadow for effect
        Container(
          height: 80,
          width: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12), // Adjust the radius here
            child: image != null
                ? Image.network(
              image!,
              width: double.infinity, // Full width of the card
              // height: 100, // Increased height for a larger image
              fit: BoxFit.cover,
            )
                : const Icon(
              Icons.image_not_supported,
              size: 70,
              color: Colors.grey,
            ),
          ),
        ),
        // const SizedBox(height: 8), // Increased space between image and text
        // Brand name text with bold and larger font
        Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black87, // Darker text color
          ),
        ),
        const SizedBox(height: 8), // Space between name and ratio text
        // Ratio text with a red color and larger font size
        Text(
          "Up to $ratio%",
          style: const TextStyle(
            color: Colors.red,
            fontSize: 16,
            fontWeight: FontWeight.w600, // Bold text for emphasis
          ),
        ),
      ],
    );
  }
}
