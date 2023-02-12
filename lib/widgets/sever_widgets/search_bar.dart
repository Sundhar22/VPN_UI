import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../colors/color.dart';
import '../../utils/screen_size.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.gray2.withOpacity(.4),
          borderRadius: BorderRadius.circular(useScreenHeight(10))),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search location",
          prefixIcon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: useScreenHeight(18),
          ),
          suffixIcon: IconButton(
            splashRadius: useScreenWidth(15),
            icon: Icon(
              FontAwesomeIcons.check,
              size: useScreenHeight(19),
            ),
            onPressed: () {
              //! Clear text in the textfield
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
