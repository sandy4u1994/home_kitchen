import 'package:flutter/material.dart';
import 'package:home_kitchen/bottom_navbar/main_appbar.dart';
import 'package:home_kitchen/appbar_gradient/AppBarGradient.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final String title = "Home Kitchen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title),
          backgroundColor: Colors.green),
        body: Center(child: BottomAppBarMain()),
        drawer:Drawer(
          elevation: 20.0,
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                margin: EdgeInsets.only(bottom: 15.0),
                currentAccountPicture: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:
                          NetworkImage("https://avatars2.githubusercontent.com/u/40665342?s=460&v=4"))),
                ),
                accountName: new Container(
                    child: Text(
                      'Sandeep Rawat',
                      style: TextStyle(color: Colors.white),
                    )),
                accountEmail: new Container(
                    child: Text(
                      'sandy4u1994@gmail.com',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
             ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('My Profile'),
                onTap: () {
                  // This line code will close drawer programatically....
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 2.0,
              ), ListTile(
                leading: Icon(Icons.stars),
                title: Text('My Preferences'),
                onTap: () {
                  // This line code will close drawer programatically....
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 2.0,
              ), ListTile(
                leading: Icon(Icons.fastfood),
                title: Text('Be a Cook'),
                onTap: () {
                  // This line code will close drawer programatically....
                  Navigator.pop(context);
                },
              ),

              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('About Us'),
                onTap: () {
                  // This line code will close drawer programatically....
                  Navigator.pop(context);
                },
              ),

              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text('Contact Us'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              Divider(
                height: 2.0,
              ), ListTile(
                leading: Icon(Icons.question_answer),
                title: Text('FAQs'),
                onTap: () {
                  // This line code will close drawer programatically....
                  Navigator.pop(context);
                },
              ),

              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.insert_drive_file),
                title: Text('Terms of Services'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
              height: 2.0,
            ),
            ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
            Navigator.pop(context);
            },
            )

            ],
          ),
        ),
    );

  }

}
