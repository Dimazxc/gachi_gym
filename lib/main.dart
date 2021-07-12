import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black26,
        body: RegistrationBody(),
      ),
    );
  }
}

class RegistrationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageBody(),
        RegisterForm(),
      ],
    );
  }
}

class ImageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40),
      child: Image(
        image: NetworkImage(
            "https://dewey.tailorbrands.com/production/brand_version_mockup_image/229/5628706229_375bc316-0aa7-4a4c-aff0-e7da7a1b6f75.png?cb=1626020495"),
        height: 280,
        width: 320,
        fit: BoxFit.fill,
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterFormState();
  }
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
          ),
          onPressed: () {},
          icon: Icon(
            Icons.g_mobiledata,
            size: 45,
          ),
          label: Text(
            "Sign up with Google",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
