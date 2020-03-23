import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
// Explicit

// Method
  Widget registerButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {},
    );
  }

  Widget nameText() {
    return TextFormField(
      decoration: InputDecoration(
          icon: Icon(
            Icons.face,
            size: 36.0,
            color: Color.fromARGB(255, 136, 13, 158),
          ),
          labelText: 'Display Name :',
          helperText: 'Type Your Name :',
          hintText: 'อังกฤษ Only'),
    );
  }

  Widget passwordText() {
    return TextFormField(
      decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            size: 36.0,
            color: Color.fromARGB(255, 136, 13, 158),
          ),
          labelText: 'Password :',
          helperText: 'Type Your Password :',
          hintText: 'More 6 charactors'),
    );
  }

  Widget emailText() {
    return TextFormField(
      decoration: InputDecoration(
          icon: Icon(
            Icons.email,
            size: 36.0,
            color: Color.fromARGB(255, 136, 13, 158),
          ),
          labelText: 'Email :',
          helperText: 'Type Your Email :',
          hintText: 'อังกฤษ Only'),
      keyboardType: TextInputType.emailAddress,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        actions: <Widget>[registerButton()],
      ),
      body: ListView(
        padding: EdgeInsets.all(50.0),
        children: <Widget>[nameText(),emailText(), passwordText()],
      ),
    );
  }
}
