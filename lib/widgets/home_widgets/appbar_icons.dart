import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vpn/screens/settings.dart';
import 'package:vpn/screens/speed_test.dart';

import '../../utils/screen_size.dart';
import '../navigator/animation_route.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              FadeRoute(widget: const SpeedTestScreen()),
            );
          },
          borderRadius: BorderRadius.circular(25),
          child: SvgPicture.asset(
            'assets/svg/speedometer.svg',
            fit: BoxFit.fill,
            height: useScreenHeight(25),
            width: useScreenWidth(25),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              FadeRoute(widget: const SettingsScreen()),
            );
          },
          borderRadius: BorderRadius.circular(25),
          child: SvgPicture.asset(
            'assets/svg/settings.svg',
            fit: BoxFit.fill,
            height: useScreenHeight(25),
            width: useScreenWidth(25),
          ),
        ),
      ],
    );
  }
}
