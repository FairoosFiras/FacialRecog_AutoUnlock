import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {//stateless mean cannot change over time
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              size: 30.0,
            ),
            tooltip: 'Go to Settings',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Settings'),
                    ),
                    body: const Center(
                      child: Text(
                        'Settings',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 100),
              child: IconButton(
                  onPressed: () {
                    print('Door Unlocked');
                  },
                  icon: Icon(Icons.lock_outline,
                      color: Colors.purple[200], size: 300.0)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.history,
                          color: const Color.fromARGB(255, 206, 147, 216),
                          size: 50.0)),
                  Text("History")
                ]),
                Column(children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person,
                          color: Colors.purple[200], size: 50.0)),
                  Text("Users")
                ]),
                Column(children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.videocam_rounded,
                          color: Colors.purple[200], size: 50.0)),
                  Text("Playback")
                ]),
              ],
            ),
          ]),
    );
  }
}
