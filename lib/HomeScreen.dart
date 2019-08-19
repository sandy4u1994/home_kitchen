import 'package:flutter/material.dart';
import 'package:home_kitchen/Constant/Constant.dart';
import 'package:home_kitchen/bottom_navbar/main_appbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final String title = "Home Kitchen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Home Kitchen",
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
               onTap: (){
                 Navigator
                     .of(context)
                     .pushNamed(PROFILE_SCREEN);
               },
              ),
              Divider(
                height: 2.0,
              ), ListTile(
                leading: Icon(Icons.stars),
                title: Text('My Preferences'),
                onTap: (){
                  Navigator
                      .of(context)
                      .pushNamed(PREFERENCE_SCREEN);
                },
              ),
              Divider(
                height: 2.0,
              ), ListTile(
                leading: Icon(Icons.fastfood),
                title: Text('Be a Cook'),
                onTap: (){
                  Navigator
                      .of(context)
                      .pushNamed(CHEF_SCREEN);
                },
              ),

              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('About Us'),
                onTap: (){
                  Navigator
                      .of(context)
                      .pushNamed(ABOUT_SCREEN);
                },
              ),

              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text('Contact Us'),
                onTap: (){
                  Navigator
                      .of(context)
                      .pushNamed(CONTACT_SCREEN);
                },
              ),

              Divider(
                height: 2.0,
              ), ListTile(
                leading: Icon(Icons.question_answer),
                title: Text('FAQs'),
                onTap: (){
                  Navigator
                      .of(context)
                      .pushNamed(FAQ_SCREEN);
                },
              ),

              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.insert_drive_file),
                title: Text('Terms of Services'),
                onTap: (){
                  Navigator
                      .of(context)
                      .pushNamed(TERMS_SCREEN);
                },
              ),
              Divider(
              height: 2.0,
            ),
            ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
              onTap: (){
                Navigator
                    .of(context)
                    .pushNamed(LOGIN_SCREEN);
              },
            )

            ],
          ),
        ),
    );

  }

}
