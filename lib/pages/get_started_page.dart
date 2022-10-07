import 'package:flutter/material.dart';
import 'package:report_app/common/myTyphography.dart';
import 'package:report_app/common/my_colors.dart';
import 'package:report_app/pages/login_Page.dart';
import 'package:report_app/widgets/buttons.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/splashScreen.png')),
                gradient: LinearGradient(colors: [
                  MyColors.gradienColor.withOpacity(0.6),
                  Colors.white,
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(
                left: 24,
                right: 24,
                bottom: MediaQuery.of(context).padding.bottom * 24),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                "Don't Be Affraid!\nLet's Report",
                style: MyTypography.splashScreenText,
              ),
              Container(
                  child: SizedBox(
                height: 150,
                width: 10,
              )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 40,
                child: ElevatedButton(
                    onPressed: (() {
                      Navigator.of(context).pushNamed('/login');
                    }),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.green1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    child: Text(
                      "Get Started",
                      style: MyTypography.button,
                    )),
              )
              // Buttons(color: MyColors.green1, centerText: Text('Get Started'))
            ]),
          ))
        ],
      ),
    );
  }
}
