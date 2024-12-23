// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CategoryCard extends StatelessWidget {
//   final String image;
//   final String Name;
//   const CategoryCard({super.key, required this.image, required this.Name,});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Image.asset("$image",
//           width:MediaQuery.of(context).size.width*0.2,
//
//           ),
//         Text("$Name",style: TextStyle(
//           fontWeight: FontWeight.bold
//         ),),
//
//       ],
//     );
//   }
// }



import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String Name;
  final VoidCallback? onEdit; // Callback for edit button

  const CategoryCard({
    super.key,
    required this.image,
    required this.Name,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            image,
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.width * 0.2,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.image_not_supported, size: 50);
            },
          ),
        ),
        // Edit Button
        if (onEdit != null)
          IconButton(
            icon: const Icon(
              Icons.edit,
              color: Colors.blueAccent,
              size: 20,
            ),
            onPressed: onEdit, // Trigger the callback
          ),
        const SizedBox(height: 8),
        // Category Name
        Text(
          Name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
