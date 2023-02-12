import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../colors/color.dart';
import '../../utils/screen_size.dart';

class ConnectButton extends StatelessWidget {
  const ConnectButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0, -.3),
      child: Container(
        padding: EdgeInsets.all(useScreenWidth(4)),
        decoration: BoxDecoration(
            border: Border.all(
              width: useScreenWidth(5),
              color: AppColor.green,
            ),
            shape: BoxShape.circle,
            color: AppColor.background),
        child: Container(
          height: useScreenHeight(100),
          width: useScreenHeight(100),
          decoration: const BoxDecoration(
            color: AppColor.blue,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: FaIcon(FontAwesomeIcons.powerOff,
                color: AppColor.foreground, size: useScreenWidth(35)),
          ),
        ),
      ),
    );
  }
}
