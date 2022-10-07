import 'package:flutter/material.dart';
import 'package:report_app/common/myTyphography.dart';
import 'package:report_app/common/my_colors.dart';
import '../common/myTyphography.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 215,
      // decoration: BoxDecoration(
      //   color: MyColors.blueDark,
      //   // border: Border.all(
      //   //   width: 2,
      //   // ),
      //   borderRadius: BorderRadius.only(
      //     bottomLeft: Radius.circular(15),
      //     bottomRight: Radius.circular(15),
      //   ),
      // ),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: (() {}), icon: Icon(Icons.menu)),
              Container(
                margin: EdgeInsets.only(left: 100),
                child: Text(
                  'Hi Gabriel',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold),
                ),
                // child: Text.rich(TextSpan(children: <InlineSpan>[
                //   TextSpan(text: "Hi Gabriel"),
                //   WidgetSpan(child: Icon(Icons.))
                // ])),
              ),
              Container(
                margin: EdgeInsets.only(left: 105, top: 10),
                child: const CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(
                      'https://randomuser.me/api/portraits/men/71.jpg'),
                ),
              ),
            ],
            // children: [
            //   Column(),
            // ],
          ),
        ],
      ),
    );
  }
}

// class MyAppBar extends StatelessWidget {
//   const MyAppBar({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(
//           Icons.adb,
//           color: Colors.white,
//         ),
//         title: Text(
//           "Hi Gabriel",
//           style: TextStyle(color: Colors.white),
//         ),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.settings),
//             onPressed: (() {}),
//           ),
//           IconButton(
//             icon: Icon(Icons.exit_to_app),
//             onPressed: (() {}),
//           )
//         ],
//       ),
//     );
//   }
// }

// class MyAppBar extends StatelessWidget {
//   const MyAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Mapp'),
//         centerTitle: true,
//         actions: <Widget>[
//           IconButton(onPressed: (() {}), icon: Icon(Icons.notifications))
//         ],
//       ),
//     );
//   }
// }
