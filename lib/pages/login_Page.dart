import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:report_app/common/myTyphography.dart';
import 'package:report_app/common/my_colors.dart';
import '../widgets/buttons.dart';
import '../widgets/textFields.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final User? user = Auth().currentUser;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //     decoration: const BoxDecoration(
    //         image: DecorationImage(
    //       fit: BoxFit.fitWidth,
    //       image: AssetImage('assets/images/sign.jpeg'),
    //     )),
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
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
              // Expanded(
              //   flex: 0,
              //   child: Center(
              //     child: Text(
              //       'Welcome To Report App',
              //       style: MyTypography.largeText,
              //       textAlign: TextAlign.center,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5, bottom: 5),
                          child: Text(
                            'Username/Email',
                            style: MyTypography.textIn,
                          ),
                        ),
                      ],
                    ),
                    // MyTextFields(
                    //   prefixIcon: Icon(FluentIcons.person_20_regular,
                    //       color: Colors.black),
                    //   hintText: "Username",
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hintText: 'Email',
                          fillColor: MyColors.green1,
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5, bottom: 5),
                          child: Text(
                            'Username/Email',
                            style: MyTypography.textIn,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hintText: 'Password',
                          fillColor: MyColors.green1,
                          filled: true,
                        ),
                      ),
                    ),
                    // MyTextFields(
                    //   obsecureText: true,
                    //   prefixIcon:
                    //       Icon(FluentIcons.key_16_regular, color: Colors.black),
                    //   hintText: "Password",
                    //   suffixIcon: Icon(
                    //     FluentIcons.eye_16_regular,
                    //     color: Colors.black,
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      width: 0,
                    ),
                    ButtonsIn(
                      onTap: signIn,
                      // () {
                      //   // Navigator.of(context).pushNamed('/home');
                      // },
                      color: MyColors.green1,
                      // ignore: prefer_const_constructors
                      centerText: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 25),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Text(
                      'Or Sign With',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: ButtonsIn(
                                onTap: () {},
                                color: Colors.white,
                                centerText: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                          'assets/images/iconGoogle.png'),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        'Google',
                                        style: MyTypography.textGoole
                                            .copyWith(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: ButtonsIn(
                                onTap: () {},
                                color: Colors.blue,
                                centerText: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/iconFB.png'),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        'Facebook',
                                        style: MyTypography.textGoole,
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: "Don't have account yet ? ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: 'Inter')),
                    ])),
                    // Text(
                    //   "Don't have account yet ?",
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.w400,
                    //       fontSize: 12,
                    //       fontFamily: 'Inter'),
                    // ),
                    TextButton(
                      child: Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter'),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/register');
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
