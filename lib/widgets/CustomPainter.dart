import 'package:flutter/material.dart';

class CircularProgress extends StatelessWidget {
  final double percentage; // Percentage value (5% here)
  final double size;       // Size of the circle
  final Color progressColor;
  final Color backgroundColor;

  const CircularProgress({
    Key? key,
    required this.percentage,
    this.size = 100, // Default size
    this.progressColor = Colors.blue,
    this.backgroundColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background Circle
          SizedBox(
            width: size,
            height: size,
            child: CircularProgressIndicator(
              strokeWidth: 8,
              value: 1.0, // Full circle
              color: backgroundColor,
            ),
          ),
          // Foreground Circle (Progress)
          SizedBox(
            width: size,
            height: size,
            child: CircularProgressIndicator(
              strokeWidth: 8,
              value: percentage / 100, // 5% progress
              color: progressColor,
              backgroundColor: Colors.transparent,
            ),
          ),
          // Text in the Center
          Text(
            '${percentage.toInt()}%',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: progressColor,
            ),
          ),
        ],
      ),
    );
  }
}
