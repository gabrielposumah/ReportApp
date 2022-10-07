import 'package:flutter/material.dart';

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (() {}),
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.black,
            )),
      ),
    );
  }
}
