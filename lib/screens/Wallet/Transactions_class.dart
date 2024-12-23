import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final String validity;
  final String icon;

  TransactionItem({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.validity,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Image.asset("$icon"),
          SizedBox(width: MediaQuery.of(context).size.width*0.02),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(subtitle, style: TextStyle(color: Colors.grey,fontSize: 12)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$date ', style: TextStyle(fontSize: 10)),
                        Text('• $validity', style: TextStyle(fontSize: 10)),
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
