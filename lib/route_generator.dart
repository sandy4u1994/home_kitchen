import 'package:flutter/material.dart';
import 'package:home_kitchen/Models/route_argument.dart';
import 'package:home_kitchen/Pages/cart.dart';
import 'package:home_kitchen/Pages/checkout.dart';
import 'package:home_kitchen/Pages/details.dart';
import 'package:home_kitchen/Pages/food.dart';
import 'package:home_kitchen/Pages/help.dart';
import 'package:home_kitchen/Pages/languages.dart';
import 'package:home_kitchen/auth/LoginScreen.dart';
import 'package:home_kitchen/Pages/map.dart';
import 'package:home_kitchen/Pages/menu_list.dart';
import 'package:home_kitchen/Pages/mobile_verification.dart';
import 'package:home_kitchen/Pages/mobile_verification_2.dart';
import 'package:home_kitchen/Pages/pages.dart';
import 'package:home_kitchen/auth/SignUpScreen.dart';
import 'package:home_kitchen/auth/ForgotScreen.dart';
import 'package:home_kitchen/SplashScreen.dart';
import 'package:home_kitchen/HomeScreen.dart';
import 'package:home_kitchen/auth/VerifyScreen.dart';
import 'package:home_kitchen/account/SettingScreen.dart';
import 'package:home_kitchen/account/Subscriptions.dart';
import 'package:home_kitchen/Pages/Contact.dart';
import 'package:home_kitchen/Pages/TermsService.dart';
import 'package:home_kitchen/Pages/favorites.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/Home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/Forgot':
        return MaterialPageRoute(builder: (_) => ForgotScreen());
      case '/Verify':
        return MaterialPageRoute(builder: (_) => VerifyScreen());
      case '/Login':
        return MaterialPageRoute(builder: (_) => LogInScreen());
      case '/SignUp':
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case '/MobileVerification':
        return MaterialPageRoute(builder: (_) => MobileVerification());
      case '/MobileVerification2':
        return MaterialPageRoute(builder: (_) => MobileVerification2());
      case '/Pages':
        return MaterialPageRoute(
            builder: (_) => PagesTestWidget(
              currentTab: args,
            ));
//      case '/Home':
//        return MaterialPageRoute(builder: (_) => HomeWidget());
      case '/Details':
        return MaterialPageRoute(builder: (_) => DetailsWidget(id: args));
      case '/Map':
        return MaterialPageRoute(builder: (_) => MapWidget());
      case '/Menu':
        return MaterialPageRoute(builder: (_) => MenuWidget());
      case '/Food':
        return MaterialPageRoute(
            builder: (_) => FoodWidget(
              routeArgument: args as RouteArgument,
            ));
      case '/Cart':
        return MaterialPageRoute(builder: (_) => CartWidget());
      case '/Checkout':
        return MaterialPageRoute(builder: (_) => CheckoutWidget());
      case '/Help':
        return MaterialPageRoute(builder: (_) => HelpWidget());
      case '/Languages':
        return MaterialPageRoute(builder: (_) => LanguagesWidget());
      case '/Splash':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/Settings':
        return MaterialPageRoute(builder: (_) => SettingScreen());
      case '/Subscriptions':
        return MaterialPageRoute(builder: (_) => SubscriptionsScreen());
      case '/Prefrences':
        return MaterialPageRoute(builder: (_) => FavoritesWidget());
      case '/Contacts':
        return MaterialPageRoute(builder: (_) => ContactScreen());
      case '/Terms':
        return MaterialPageRoute(builder: (_) => TermsService());
//      case '/second':
//      // Validation of correct data type
//        if (args is String) {
//          return MaterialPageRoute(
//            builder: (_) => SecondPage(
//              data: args,
//            ),
//          );
//        }
//        // If args is not of the correct type, return an error page.
//        // You can also throw an exception while in development.
//        return _errorRoute();
      default:
      // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
