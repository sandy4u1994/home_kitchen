import 'package:flutter/material.dart';
import 'package:home_kitchen/Constant/Constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';


class ForgotScreen extends StatefulWidget {
  @override
  ForgotScreenState createState() => ForgotScreenState();
}

class ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding:
            EdgeInsets.only(top: 125.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: new AssetImage("assets/images/customer_logo.png"),
              width: 175.0,
              height: 175.0,
            ),
            Text("Enter Your Registered Mobile No.", style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
                fontSize: 20)),
            SizedBox(
              height: 20.0,
            ),
            buildTextField("Mobile No."),
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
                  GestureDetector(
                  onTap: () {
                  Navigator.of(context).pushNamed('/SignUp');
                   },
                   child: new  Text("SIGN UP",
                        style: TextStyle(
                          color: Colors.green,
                        )),),
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

  Widget buildTextField(String hintText) {
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
        prefixIcon: Icon(Icons.phone_android, color: Colors.green),

      ),
      keyboardType: TextInputType.phone,
        inputFormatters: [
          LengthLimitingTextInputFormatter(10),
        ]

    );
  }

  Widget buildButtonContainer() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('Verify');
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
            "SEND OTP",
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
