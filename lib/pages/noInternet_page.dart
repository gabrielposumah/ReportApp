import 'package:flutter/material.dart';
import 'package:report_app/common/my_colors.dart';
import 'package:report_app/widgets/buttons.dart';

class NoInternetPage extends StatelessWidget {
  const NoInternetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                Text(
                  'No Internet Connection',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter'),
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "assets/images/noInternet.png",
                  // width: 100,
                  // height: 100,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "We’re sorry, looks like your \ninternet connection is off. Make \nsure to turn it on and refresh",
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.blueAccent),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonsIn(
                  onTap: () {},
                  color: MyColors.green1,
                  centerText: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    child: Text(
                      'Retry to connect',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
