import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class thought extends StatelessWidget {
  const thought({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 120,
                  width: 50,
                  color: Colors.blue,
                ),
                Container(
                  height: 270,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 180,
                  width: 50,
                  color: Colors.blue,
                ),
                Container(
                  height: 150,
                  width: 50,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
