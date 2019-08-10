import 'package:flutter/material.dart';
import 'package:home_kitchen/Constant/Constant.dart';

class VerifyScreen extends StatefulWidget {
  @override
  VerifyScreenState createState() => VerifyScreenState();
}

class VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding:
            EdgeInsets.only(top: 150.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: new AssetImage("assets/logo.png"),
              width: 150.0,
              height: 125.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            buildTextField("Email"),
            SizedBox(
              height: 10.0,
            ),
            buildButtonContainer(),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("SIGN UP",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String hintText) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: hintText == "Email" ? Icon(Icons.email) : Icon(Icons.lock),
      ),
    );
  }

  Widget buildButtonContainer() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(HOME_SCREEN);
      },
      child: new Container(
        height: 56.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23.0),
          gradient: LinearGradient(
              colors: [Color(0xFF1DBF73), Color(0xFF1DBF75)],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft),
        ),
        child: Center(
          child: Text(
            "SUBMIT",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
