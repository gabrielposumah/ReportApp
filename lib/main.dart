import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:report_app/backend/auth_controller.dart';
import 'package:report_app/pages/get_started_page.dart';
import 'package:report_app/pages/home_page.dart';
import 'package:report_app/pages/login_Page.dart';
import 'package:report_app/pages/main_page.dart';
import 'package:report_app/pages/noInternet_page.dart';
import 'package:report_app/route/app_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Report App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetStartedPage(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      // initialRoute: '/get-started',
      // routes: {
      //   '/get-started': (context) => GetStartedPage(),
      //   '/login': (context) => LoginPage(),
      //   '/home': (context) => HomePage(),
      // },
    );
  }
}
