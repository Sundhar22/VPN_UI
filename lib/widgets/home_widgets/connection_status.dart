import 'package:flutter/material.dart';

import '../../colors/color.dart';
import '../../utils/screen_size.dart';

class ConnectionStatus extends StatelessWidget {
  const ConnectionStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: useScreenHeight(370),
        right: MediaQuery.of(context).size.width / 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: 'VPN Status: ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: useScreenHeight(15))),
                  TextSpan(
                      text: 'Connected',
                      style: TextStyle(
                          color: AppColor.green,
                          fontWeight: FontWeight.w700,
                          fontSize: useScreenHeight(14))),
                ],
              ),
            ),
            SizedBox(
              height: useScreenHeight(5),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: 'Duration: ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: useScreenHeight(15))),
                  TextSpan(
                      text: '00:01:24',
                      style: TextStyle(
                          color: AppColor.gray2,
                          fontWeight: FontWeight.w700,
                          fontSize: useScreenHeight(14))),
                ],
              ),
            ),
          ],
        ));
  }
}
