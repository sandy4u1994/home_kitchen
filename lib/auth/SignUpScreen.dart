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
        padding: EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0, bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: new AssetImage("assets/images/customer_logo.png"),
              width: 175.0,
              height: 175.0,
            ),
            buildTextField("Full Name"),
            SizedBox(height: 8.0,),
            buildTextField("Email ID"),
            SizedBox(height: 8.0,),
        //    buildTextField("Mobile No."),
        //    SizedBox(height: 8.0,),
            buildTextField("Password"),
            SizedBox(height: 8.0,),
            buildTextField("Confirm Password"),
            SizedBox(height: 15.0,),
            buildButtonContainer(),
            SizedBox(height: 20.0,),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already, have an account?"),
                    SizedBox(width: 8.0,),
                GestureDetector(
                  onTap: (){
                    Navigator
                        .of(context)
                        .pushNamed('/Login');
                  },
                  child: new Text("LOGIN", style: TextStyle(color: Colors.green,)),
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
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: hintText == "Full Name" ? Icon(Icons.account_circle, color: Colors.green,)
            : hintText == "Email ID" ? Icon(Icons.email, color: Colors.green,)
           // : hintText == "Mobile No." ? Icon(Icons.phone_android, color: Colors.green,)
            : hintText == "Password" ? Icon(Icons.lock, color: Colors.green,)
            : hintText == "Confirm Password" ? Icon(Icons.lock, color: Colors.green,)
            :Icon(Icons.refresh, color: Colors.green,),

        suffixIcon: hintText == "Password" ? IconButton(
          onPressed: _toggleVisibility,
          icon: _isHidden ? Icon(Icons.visibility_off, color: Colors.green,) : Icon(Icons.visibility, color: Colors.green,),
        )
        : hintText == "Confirm Password" ? IconButton(
          onPressed: _toggleVisibility,
          icon: _isHidden ? Icon(Icons.visibility_off, color: Colors.green,) : Icon(Icons.visibility, color: Colors.green,),
        ): null,
      ),
      obscureText: hintText == "Password" ? _isHidden : hintText == "Confirm Password" ? _isHidden : false,
    );
  }

  Widget buildButtonContainer(){
    return GestureDetector(
        onTap: (){
      Navigator
          .of(context)
      .pushNamed('/Pages', arguments: 2);
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