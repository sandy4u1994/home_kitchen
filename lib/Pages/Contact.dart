import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ContactScreen extends StatefulWidget {
  @override
  ContactScreenState createState() => ContactScreenState();
}

class ContactScreenState extends State<ContactScreen> {
  @override

  static var _txtCustom = TextStyle(
    color: Colors.black54,
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    fontFamily: "Gotik",
  );


  static var _txtCustomHead = TextStyle(
    color: Colors.black54,
    fontSize: 17.0,
    fontWeight: FontWeight.w600,
    fontFamily: "Gotik",
  );

  static var _txtCustomSub = TextStyle(
    color: Colors.black54,
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    fontFamily: "Gotik",
  );

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Contact Us",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              color: Colors.black54,
              fontFamily: "Gotik"),
        ),
        iconTheme: IconThemeData(
          color: const Color(0xFF1DBF73),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 15.0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/customer_logo.png",
                      height: 120.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "HOME KITCHEN",
                            style: _txtCustomSub.copyWith(
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Online Food Order App",
                            style: _txtCustomSub,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 130.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.1),
                          blurRadius: 4.5,
                          spreadRadius: 1.0,
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset("assets/images/house.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Office Address",
                            style: _txtCustom.copyWith(
                                fontWeight: FontWeight.w700),
                          ),
                          Padding(padding: EdgeInsets.only(top: 5.0)),
                          Text(
                            "Home, Work & Other Address",
                            style: _txtCustom.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 12.0,
                                color: Colors.black38),
                          ),
                          Padding(padding: EdgeInsets.only(top: 2.0)),
                          Text(
                            "House No: 1234, 2nd Floor Sector 18, \nSilicon Valey Amerika Serikat",
                            style: _txtCustom.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.black38),
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 130.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.1),
                      blurRadius: 4.5,
                      spreadRadius: 1.0,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset("assets/icon/girlcallcenter.png"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Get in Touch",
                        style: _txtCustom.copyWith(
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5.0)),
                      Text(
                        "Home, Work & Other Address",
                        style: _txtCustom.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                            color: Colors.black38),
                      ),
                      Padding(padding: EdgeInsets.only(top: 2.0)),
                      Text(
                        "House No: 1234, 2nd Floor Sector 18, \nSilicon Valey Amerika Serikat",
                        style: _txtCustom.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                            color: Colors.black38),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Follow Us",
                  style: _txtCustomSub,
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        // Use the FontAwesomeIcons class for the IconData
                          icon: new Icon(FontAwesomeIcons.facebookF, size: 30.0, color: Colors.indigoAccent,),
                          onPressed: () { print("Pressed"); }
                      ),
                      SizedBox(width: 10.0,),

                      IconButton(
                        // Use the FontAwesomeIcons class for the IconData
                          icon: new Icon(FontAwesomeIcons.instagram, size: 30.0, color: Colors.red,),
                          onPressed: () { print("Pressed"); }
                      ),
                      SizedBox(width: 10.0,),

                      IconButton(
                        // Use the FontAwesomeIcons class for the IconData
                          icon: new Icon(FontAwesomeIcons.twitter, size: 30.0, color: Colors.blueAccent,),
                          onPressed: () { print("Pressed"); }
                      ),
                    ],
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
