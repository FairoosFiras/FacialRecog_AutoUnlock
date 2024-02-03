import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Video'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.fast_rewind),
                  onPressed: () {
                    // Handle rewind button press
                    print('Rewind pressed');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.pause),
                  onPressed: () {
                    // Handle pause button press
                    print('Pause pressed');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.fast_forward),
                  onPressed: () {
                    // Handle forward button press
                    print('Forward pressed');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//had to add this comment to make it modified