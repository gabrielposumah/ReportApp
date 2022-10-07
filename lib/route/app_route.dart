// import 'package:flutter/material.dart';
// import 'package:report_app/pages/get_started_page.dart';
// import './app_route_name.dart';

// class AppRoute {
//   static Route<dynamic>? generate(RouteSettings settings) {
//     switch (settings.name) {
//       case AppRouteName.getStarted:
//         return MaterialPageRoute(
//           builder: (AppRouteName) => const GetStartedPage(),
//           settings: settings,
//         );
//         case AppRouteName.home:
//         return PageRouteBuilder(
//           settings: settings,
//           pageBuilder: ( , , ) => const SizedBox(),
//           transitionDuration: const Duration(milliseconds: 400),
//           transitionsBuilder: (( , animation, , child) {
//             return SlideTransition(position: Tween<Offset> (begin: Offset(1,0),
//             end: Offset.zerom).animate(animation)
//             child: child,)
//           } ))
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:report_app/pages/get_started_page.dart';
import 'package:report_app/pages/home_page.dart';
import 'package:report_app/pages/login_Page.dart';
import 'package:report_app/pages/register_Page.dart';
import 'package:report_app/pages/report_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => GetStartedPage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case '/report':
        return MaterialPageRoute(builder: (_) => ReportsPage());
      // return MaterialPageRoute(builder: (_) => AboutPage(args));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
