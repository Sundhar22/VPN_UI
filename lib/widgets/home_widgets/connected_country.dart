import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../colors/color.dart';
import '../../screens/server.dart';
import '../../utils/screen_size.dart';
import '../navigator/animation_route.dart';

class ConnectedCountry extends StatelessWidget {
  const ConnectedCountry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: useScreenHeight(500),
        right: MediaQuery.of(context).size.width / 16.2,
        child: InkWell(
          borderRadius: BorderRadius.circular(useScreenWidth(15)),
          onTap: () {
            Navigator.push(
              context,
              FadeRoute(widget: const ServerScreen()),
            );
          },
          child: Container(
            width: useScreenWidth(300),
            padding: EdgeInsets.all(useScreenWidth(10)),
            decoration: BoxDecoration(
                color: AppColor.foreground,
                borderRadius: BorderRadius.circular(useScreenWidth(15)),
                border: Border.all(color: AppColor.gray1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: useScreenHeight(30),
                        width: useScreenWidth(40),
                        child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/3013/3013911.png')),
                    SizedBox(
                      width: useScreenWidth(30),
                    ),
                    Text(
                      "United States",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: useScreenHeight(15)),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColor.gray2,
                )
              ],
            ),
          ),
        ));
  }
}
