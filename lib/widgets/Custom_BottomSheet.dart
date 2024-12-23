import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  final Widget? imageTextContent;
  final String? text;
  final Widget? button;

  CustomBottomSheet({
    this.imageTextContent,
    this.text,
    this.button,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
          ),
          padding: EdgeInsets.all(16.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (imageTextContent != null) imageTextContent!,


              if (text != null) ...[
                SizedBox(height: 10),
                Text(
                  text!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],

              if (button != null) ...[
                SizedBox(height: 20),
                button!,
              ],
            ],
          ),
        ),
      ],
    );
  }
}
