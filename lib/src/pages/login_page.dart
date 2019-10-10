import 'package:costos_app/src/widgets/google_sign_in_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // Private methods within build method help us to
    // organize our code and recognize structure of widget
    // that we're building:
    BoxDecoration _buildBackground() {
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/fondo.jpg"),
          fit: BoxFit.cover,
        ),
      );
    }

    Text _buildText() {
      return Text(
        'CostosApp',
        style: TextStyle(fontFamily: 'Merriweather', fontSize: 40),
        textAlign: TextAlign.center,
      );
    }

    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          decoration: _buildBackground(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildText(),
                SizedBox(height: 10),
                Text('por Pablo Marigliano'),
                SizedBox(height: 40),
                GoogleSignInButton(
                    // Passing function callback as constructor argument:
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, 'home')),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
