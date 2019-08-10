import 'package:home_kitchen/Constant/Constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUpScreen>{

  bool _isHidden = true;

  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.only(top: 100.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: new AssetImage("assets/images/customer_logo.png"),
              width: 150.0,
              height: 125.0,
            ),
            SizedBox(height: 10.0,),
            buildTextField("Email"),
            SizedBox(height: 10.0,),
            buildTextField("Password"),
            SizedBox(height: 10.0,),
            buildTextField("Confirm Password"),
            SizedBox(height: 10.0,),
            buildButtonContainer(),
            SizedBox(height: 10.0,),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already, have an account?"),
                    SizedBox(width: 10.0,),
                GestureDetector(
                  onTap: (){
                    Navigator
                        .of(context)
                        .pushNamed(LOGIN_SCREEN);
                  },
                  child: new Text("LOGIN", style: TextStyle(color: Theme.of(context).primaryColor,)),
                ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      // Use the FontAwesomeIcons class for the IconData
                        icon: new Icon(FontAwesomeIcons.facebookSquare, size: 40.0, color: Colors.indigoAccent,),
                        onPressed: () { print("Pressed"); }
                    ),
                    SizedBox(width: 10.0,),

                    IconButton(
                      // Use the FontAwesomeIcons class for the IconData
                        icon: new Icon(FontAwesomeIcons.googlePlusSquare, size: 40.0, color: Colors.red,),
                        onPressed: () { print("Pressed"); }
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String hintText){
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
        suffixIcon: hintText == "Password" ? IconButton(
          onPressed: _toggleVisibility,
          icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ) : null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }

  Widget buildButtonContainer(){
    GestureDetector(
        onTap: (){
      Navigator
          .of(context)
          .pushNamed(VERIFY_SCREEN);
    },
    child: new Container(
      height: 56.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.0),
        gradient: LinearGradient(
            colors: [
              Color(0xFFFB415B),
              Color(0xFFEE5623)
            ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft
        ),
      ),
      child: Center(
        child: Text(
          "SIGN UP",
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