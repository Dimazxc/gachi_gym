import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black, // set it to false
        body: SingleChildScrollView(child: RegistrationBody()),
      ),
    );
  }
}

class RegistrationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        ImageBody(),
        Divider(),
        RegisterForm(),
        ExternalRegisterButton(),
      ],
    );
  }
}

class ImageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
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
    return Container(
      width: 500,
      height: 360,
      child: Form(
          child: ListView(
        padding: EdgeInsets.only(top: 30),
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: "Full name *",
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.white, width: 3)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.white, width: 3))),
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Password *",
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.security,
                  color: Colors.white,
                ),
                suffixIcon: Icon(
                  Icons.visibility,
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.white, width: 3)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.white, width: 3))),
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Confirm Password *",
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.white, width: 3)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.white, width: 3))),
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 45,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
            child: Text(
              "Submit",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      )),
    );
  }
}

class ExternalRegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 100,
      child: Column(
        children: [],
      ),
    );
  }
}
