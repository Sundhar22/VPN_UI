import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../colors/color.dart';
import '../../utils/screen_size.dart';

class GetPremium extends StatelessWidget {
  const GetPremium({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: useScreenHeight(10),
      right: MediaQuery.of(context).size.width / 4,
      child: Container(
        padding: EdgeInsets.all(useScreenWidth(10)),
        decoration: BoxDecoration(
            color: AppColor.blue,
            borderRadius: BorderRadius.circular(useScreenHeight(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const FaIcon(
              FontAwesomeIcons.crown,
              color: Color(0XFFFFD700),
            ),
            SizedBox(
              width: useScreenHeight(5),
            ),
            Text(
              'Get Premium',
              style: TextStyle(
                  color: AppColor.foreground,
                  fontWeight: FontWeight.bold,
                  fontSize: useScreenHeight(15)),
            ),
          ],
        ),
      ),
    );
  }
}
