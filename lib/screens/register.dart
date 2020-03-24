import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
// Explicit
  final formKey = GlobalKey<FormState>();
  String nameString, emailString, passwordString;

// Method
  Widget registerButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {
        formKey.currentState.save();
        print('Name = $nameString, email = $emailString, password = $passwordString');

      },
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
      onSaved: (value) {
        nameString = value.trim();
      },
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
      onSaved: (value) {
        passwordString = value.trim();
      },
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
      onSaved: (value) {
        emailString = value.trim();
      },
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
      body: Form(
        key: formKey,
        child: ListView(
          padding: EdgeInsets.all(50.0),
          children: <Widget>[
            nameText(),
            emailText(),
            passwordText(),
          ],
        ),
      ),
    );
  }
}
