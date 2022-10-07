import 'package:flutter/material.dart';
import 'package:report_app/common/myTyphography.dart';
import 'package:report_app/common/my_colors.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: MyColors.blueDark,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Balance',
                    style: MyTypography.button.copyWith(color: Colors.white),
                  ),
                  Text('\$ 1.234',
                      style:
                          MyTypography.nameLarge.copyWith(color: Colors.white)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Card',
                    style: MyTypography.button.copyWith(color: Colors.white),
                  ),
                  Text('Bank BNI',
                      style:
                          MyTypography.nameLarge.copyWith(color: Colors.white)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
