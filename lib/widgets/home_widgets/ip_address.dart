import 'package:flutter/material.dart';

import '../../colors/color.dart';
import '../../utils/screen_size.dart';

class IPAddress extends StatelessWidget {
  const IPAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: useScreenHeight(130),
        right: MediaQuery.of(context).size.width / 4,
        child: Container(
          padding: EdgeInsets.all(useScreenWidth(15)),
          decoration: BoxDecoration(
              color: AppColor.foreground,
              border: Border.all(color: AppColor.gray1),
              borderRadius: BorderRadius.circular(useScreenHeight(15))),
          child: Center(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: 'IP: ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: useScreenHeight(15))),
                  TextSpan(
                      text: '104.233.181.147',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: useScreenHeight(14))),
                ],
              ),
            ),
          ),
        ));
  }
}
