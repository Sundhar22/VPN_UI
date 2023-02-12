import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../colors/color.dart';
import '../../utils/screen_size.dart';

class ConnectionSpeed extends StatelessWidget {
  const ConnectionSpeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: useScreenHeight(620),
      right: MediaQuery.of(context).size.width / 12.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SpeedBar(
            speed: '345',
            tittle: 'Download',
            type: ' Mb/s',
            icon: FontAwesomeIcons.arrowDown,
          ),
          SizedBox(
            width: useScreenWidth(30),
          ),
          const SpeedBar(
            speed: '250',
            tittle: 'Upload',
            type: ' Mb/s',
            icon: FontAwesomeIcons.arrowUp,
          ),
        ],
      ),
    );
  }
}

class SpeedBar extends StatelessWidget {
  final IconData? icon;

  final String tittle;

  final String speed;

  final String type;

  const SpeedBar({
    Key? key,
    this.icon,
    required this.tittle,
    required this.speed,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(useScreenWidth(10)),
      width: useScreenWidth(130),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.foreground,
          border: Border.all(color: AppColor.gray2.withOpacity(.1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(useScreenWidth(10)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.liteBlue,
            ),
            child: FaIcon(
              icon,
              size: useScreenHeight(17),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(tittle),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: speed,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600)),
                TextSpan(
                    text: type,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600))
              ]))
            ],
          )
        ],
      ),
    );
  }
}
