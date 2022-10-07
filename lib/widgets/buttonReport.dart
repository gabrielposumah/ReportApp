import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class ButtonReport extends StatelessWidget {
  const ButtonReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        //     child: Column(
        //   children: [
        //     SvgPicture.asset(
        //       '/assets/images/ReportButton.svg',
        //       width: 100,
        //       height: 100,
        //     )
        //   ],
        // )
        width: 300,
        height: 300,
        color: Colors.white,
        child: Column(
          children: [
            IconButton(
                onPressed: null,
                icon: Image.asset(
                  '/assets/images/Vector.png',
                  height: 200,
                ))
            // icon: SvgPicture.asset('/assets/images/ReportButton.svg'),
          ],
        ));
  }
}
