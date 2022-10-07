import 'package:flutter/material.dart';
import 'package:report_app/common/myTyphography.dart';
import 'package:report_app/common/my_colors.dart';
import 'package:report_app/widgets/buttons.dart';
import 'package:report_app/widgets/textFields.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Image.asset('assets/images/sigin.png'),
                  // SvgPicture.asset(
                  //   'assets/images/ilus2.svg',
                  //   width: 200,
                  //   height: 200,
                  //),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      'Email',
                      style: MyTypography.textIn,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextFields(
                      hintText: "Type your email",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Username',
                      style: MyTypography.textIn,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextFields(
                      hintText: "Type your username",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Phone Number',
                      style: MyTypography.textIn,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextFields(
                      hintText: "Type your phone number",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Password',
                      style: MyTypography.textIn,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextFields(
                      hintText: "Type your password",
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ButtonsIn(
                            onTap: () {
                              Navigator.of(context).pushNamed('/login');
                            },
                            color: MyColors.green1,
                            centerText: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                      ),
                    )
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
