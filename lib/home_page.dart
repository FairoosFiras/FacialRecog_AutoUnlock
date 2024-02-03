import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'home_page.dart'; // Path to your HomePage widget file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visage Login',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String message = '';
  Color messageColor = Colors.red;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void login() {
    if (emailController.text == 'firas2387@gmail.com' &&
        passwordController.text == 'Firas123') {
      setState(() {
        message = 'Successfully logged in';
        messageColor = Colors.green;
      });

      // Navigate to HomePage after successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    } else {
      setState(() {
        message = 'Username or password is incorrect';
        messageColor = Colors.red;
      });
    }
  }
=======
import 'history.dart';
import 'settings.dart';
import 'button_screen.dart';
import 'users_page.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  //stateless mean cannot change over time
>>>>>>> demo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text('Sign In'),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.purple),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 60),
              Center(
                child: Image.asset(
                  'assets/visage_logo.png',
                  width: 200, //dont change this, it makes it weird
                ),
              ),
              SizedBox(height: 50),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'example@email.com',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 24),
              ElevatedButton(
                child: Text('Sign In'),
                onPressed: login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                message,
                style: TextStyle(color: messageColor),
                textAlign: TextAlign.center,
              ),
              TextButton(
                child: Text('Forgot Password?'),
                onPressed: () {
                  // Implement forgot password functionality
                },
              ),
              TextButton(
                child: Text('Sign Up'),
                onPressed: () {
                  // Implement sign-up functionality
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
=======
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              size: 30.0,
            ),
            tooltip: 'Go to Settings',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                      icon: Icon(Icons.history,
                          color: const Color.fromARGB(255, 206, 147, 216),
                          size: 50.0)),
                  Text("History")
                ]),
                Column(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserListPage()),
                        );
                      },
                      icon: Icon(Icons.person,
                          color: Colors.purple[200], size: 50.0)),
                  Text("Users")
                ]),
                Column(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ButtonScreen()),
                        );
                      },
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
//had to add this comment to make it modified
//had to add this comment to make it modified
>>>>>>> demo
