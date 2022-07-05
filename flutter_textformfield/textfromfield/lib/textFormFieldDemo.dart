import 'package:flutter/material.dart';

class TextFormFieldOrnek extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextFromFieldOrnekState();
  }
}

class TextFromFieldOrnekState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.save),
      ),
      appBar: AppBar(
        title: Text("User Login"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: "Name and Surname",
                  labelText: "Name Surname",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  hintText: "E-Mail",
                  labelText: "e-mail",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "YourPassword",
                  labelText: "password",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
