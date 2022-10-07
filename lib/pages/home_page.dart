import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:report_app/common/myTyphography.dart';
import 'package:report_app/common/my_colors.dart';
import 'package:report_app/widgets/buttons.dart';

import '../widgets/headerDrawer.dart';

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // const HomePage({Key? key}) : super(key: key);
//   int _index = 0;

//   void _changeSelectedNavBar(int index) {
//     setState(() {
//       _index = index;
//     });
//   }

//   final tabs = [
//     Center(
//       child: HomePage(),
//     ),
//     Center(
//       child: Text('Profile'),
//     ),
//     Center(
//       child: Text('Report'),
//     ),
//   ];

//   @override
//   // void initState() {
//   //   index = 0;
//   //   super.initState();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         systemOverlayStyle: SystemUiOverlayStyle.dark,
//         leading: IconButton(
//             onPressed: (() {}),
//             splashRadius: 24,
//             icon: Icon(
//               Icons.menu_rounded,
//               color: Colors.black,
//             )),
//         centerTitle: true,
//         title: Text(
//           "Hi, Gabriel",
//           style: TextStyle(fontSize: 30),
//         ),
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // BoxWidget(),
//           ],
//         ),
//       ),

// smpe sini

// bottomNavigationBar: BottomNavigations(),
// bottomNavigationBar: BottomNavigations(),
// bottomNavigationBar: ConvexAppBar(
//   backgroundColor: Colors.white,
//   color: Colors.black,
//   items: [
//     TabItem(
//       icon: Icons.home,
//     ),
//     TabItem(
//       icon: Icons.map,
//     ),
//     TabItem(
//       icon: Icons.person,
//     ),
//   ],
//   onTap: (int i) => print('click index=$i'),
// )
// extendBody: true,
// bottomNavigationBar: BottomNavigationBar(
//   currentIndex: _index,
//   backgroundColor: Colors.white,
//   selectedItemColor: Colors.orange,
//   iconSize: 30,
//   onTap: (index) {
//     setState(() {
//       _index = index;
//     });
//   },
//   items: [
//     BottomNavigationBarItem(
//         icon: Icon(Icons.home_outlined), label: 'Home'),
//     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//   ],
// ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          leading: IconButton(
              onPressed: (() {}),
              splashRadius: 20,
              icon: Icon(
                Icons.menu_rounded,
                color: Colors.black,
              )),
          centerTitle: true,
          title: Text(
            "Hi, Gabriel",
            style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600),
          ),
          actions: [
            CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/men/71.jpg'),
            )
          ],
          // bottom: PreferredSize(
          //   preferredSize: Size.fromHeight(80),
          //   child: Container(
          //     margin: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          //   ),
          // ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyHeaderDrawer(),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(fontFamily: 'Inter', fontSize: 16),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Profile',
                    style: TextStyle(fontFamily: 'Inter', fontSize: 16),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.checklist,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Reports',
                    style: TextStyle(fontFamily: 'Inter', fontSize: 16),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  title: Text('Log out',
                      style: TextStyle(fontFamily: 'Inter', fontSize: 16)),
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            // margin: EdgeInsets.symmetric(horizontal: 100),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 90),
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonsIn(
                            onTap: () {},
                            color: MyColors.green1,
                            centerText: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/consulting.png'),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    'Consulting',
                                    style: MyTypography.textGoole
                                        .copyWith(color: Colors.white),
                                  ),
                                ],
                              ),
                            )),
                        // SizedBox(
                        //   width: 50,
                        // ),
                        ButtonsIn(
                            onTap: () {},
                            color: MyColors.green1,
                            centerText: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/aboutus.png'),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    'About us',
                                    style: MyTypography.textGoole
                                        .copyWith(color: Colors.white),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    IconButton(
                      splashRadius: 100,
                      iconSize: 200,
                      icon: Ink.image(
                        image: AssetImage('assets/images/reportButton.png'),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/report');
                        // do something when the button is pressed
                        debugPrint('Hi there');
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        'Lates Reports',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                      width: 312,
                      height: 106,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MyColors.blueLight,
                      ),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Text(
                                " Lorem ipsum dolor sit amet, consectetur ",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ));
  }
}
