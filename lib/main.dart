import 'dart:async';

import 'package:home_kitchen/Constant/Constant.dart';
import 'package:home_kitchen/SplashScreen.dart';
import 'package:home_kitchen/HomeScreen.dart';
import 'package:home_kitchen/auth/LoginScreen.dart';
import 'package:home_kitchen/auth/SignUpScreen.dart';
import 'package:home_kitchen/auth/ForgotScreen.dart';
import 'package:home_kitchen/auth/VerifyScreen.dart';
import 'package:home_kitchen/UI/Sort.dart';
import 'package:home_kitchen/UI/Search.dart';
import 'package:home_kitchen/UI/Chef.dart';
import 'package:home_kitchen/UI/Food.dart';
import 'package:home_kitchen/UI/Location.dart';
import 'package:home_kitchen/pages/About.dart';
import 'package:home_kitchen/pages/Contact.dart';
import 'package:home_kitchen/pages/FAQ.dart';
import 'package:home_kitchen/pages/Feedback.dart';
import 'package:home_kitchen/account/Cart.dart';
import 'package:home_kitchen/account/Orders.dart';
import 'package:home_kitchen/account/Preferences.dart';
import 'package:home_kitchen/account/Profile.dart';
import 'package:home_kitchen/account/Subscriptions.dart';
import 'package:home_kitchen/bottom_navbar/bottom_appbar.dart';
import 'package:home_kitchen/bottom_navbar/layout.dart';
import 'package:home_kitchen/bottom_navbar/main_appbar.dart';
import 'package:home_kitchen/bottom_navbar/navbar_icons.dart';

import 'package:flutter/material.dart';

main() {

  runApp(new MaterialApp(
    title: 'FluterLogindemo',
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
        accentColor: Colors.black
        ,
        primaryColor: Colors.black,
        primaryColorDark: Colors.black

    ),
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      HOME_SCREEN: (BuildContext context) => new HomeScreen(),
      LOGIN_SCREEN: (BuildContext context) => new LogInScreen(),
      SIGNUP_SCREEN: (BuildContext context) => new SignUpScreen(),
      ANIMATED_SPLASH: (BuildContext context) => new SplashScreen(),
      FORGOT_SCREEN: (BuildContext context) => new ForgotScreen(),
      VERIFY_SCREEN: (BuildContext context) => new VerifyScreen(),
      CART_SCREEN: (BuildContext context) => new CartScreen(),
      ORDER_SCREEN: (BuildContext context) => new OrderScreen(),
      PREFERENCE_SCREEN: (BuildContext context) => new PreferencesScreen(),
      PROFILE_SCREEN: (BuildContext context) => new ProfileScreen(),
      SUBSCRIPTION_SCREEN: (BuildContext context) => new SubscriptionsScreen(),
      ABOUT_SCREEN: (BuildContext context) => new AboutScreen(),
      CONTACT_SCREEN: (BuildContext context) => new ContactScreen(),
      FAQ_SCREEN: (BuildContext context) => new FAQScreen(),
      FEEDBACK_SCREEN: (BuildContext context) => new FeedbackScreen(),
      CHEF_SCREEN: (BuildContext context) => new ChefScreen(),
      FOOD_SCREEN: (BuildContext context) => new FoodScreen(),
      LOCATION_SCREEN: (BuildContext context) => new LocationScreen(),
      SEARCH_SCREEN: (BuildContext context) => new SearchScreen(),
      SORT_SCREEN: (BuildContext context) => new SortScreen(),
      MAIN_APPBAR: (BuildContext context) => new MainAppBar(title: 'BottomAppBar with FAB'),
      LAYOUT_APPBAR: (BuildContext context) => new AnchoredOverlay(),
      ICON_APPBAR: (BuildContext context) => new FabWithIcons(),
      BOTTOM_APPBAR: (BuildContext context) => new FABBottomAppBar()
    },
  ));
}


