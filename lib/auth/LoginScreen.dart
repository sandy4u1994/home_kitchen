import 'package:home_kitchen/Constant/Constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LogInScreen extends StatefulWidget {
  @override
  LogInScreenState createState() => LogInScreenState();
}

class LogInScreenState extends State<LogInScreen>{

  bool _isHidden = true;

  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.only(top: 100.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: new AssetImage("assets/images/customer_logo.png"),
              width: 200.0,
              height: 200.0,
            ),
            buildTextField("Mobile No."),
            SizedBox(height: 10.0,),
            buildTextField("Password"),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                  ),
               GestureDetector(
                onTap: (){
                  Navigator
                      .of(context)
                      .pushNamed(FORGOT_SCREEN);
                },
                child: new Text(
                    "Forgotten Password?",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
              ),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            buildButtonContainer(),
            SizedBox(height: 20.0,),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    SizedBox(width: 10.0,),
                GestureDetector(
                  onTap: (){
                    Navigator
                        .of(context)
                        .pushNamed(SIGNUP_SCREEN);
                  },
                    child: new Text("SIGN UP", style: TextStyle(color: Theme.of(context).primaryColor,)),
                ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0,),
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
          color: Colors.green,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: hintText == "Mobile No." ? Icon(Icons.phone_android, color: Colors.green,) : Icon(Icons.lock, color: Colors.green),
        suffixIcon: hintText == "Password" ? IconButton(
          onPressed: _toggleVisibility,
          icon: _isHidden ? Icon(Icons.visibility_off,color: Colors.green) : Icon(Icons.visibility, color: Colors.green),
        ) : null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }

  Widget buildButtonContainer(){
    return GestureDetector(
        onTap: (){
      Navigator
          .of(context)
          .pushNamed(HOME_SCREEN);
      },
      child: new Container(
      height: 56.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.0),
        gradient: LinearGradient(
            colors: [
              Color(0xFF1DBF73),
              Color(0xFF1DBF75)
            ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft
        ),
      ),
      child: Center(
        child: Text(
          "LOGIN",
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