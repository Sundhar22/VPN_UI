import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vpn/colors/color.dart';
import 'package:vpn/utils/screen_size.dart';
import 'package:vpn/widgets/sever_widgets/countries.dart';

import '../widgets/sever_widgets/search_bar.dart';

class ServerScreen extends StatefulWidget {
  const ServerScreen({super.key});

  @override
  State<ServerScreen> createState() => _ServerScreenState();
}

class _ServerScreenState extends State<ServerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Select Server',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: useScreenWidth(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: useScreenHeight(10),
            ),
            const Search(),
            SizedBox(
              height: useScreenHeight(30),
            ),
            Text(
              'Locations',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: useScreenHeight(16),
              ),
            ),
            SizedBox(
              height: useScreenHeight(10),
            ),
            Locations()
          ],
        ),
      ),
    );
  }
}

class Locations extends StatelessWidget {
  Locations({
    super.key,
  });
  final List<Country> countries = [
    Country(
      src: 'https://cdn-icons-png.flaticon.com/512/206/206741.png',
      name: 'Afghanistan',
      signalStrength: FontAwesomeIcons.signal,
      button: Icons.radio_button_off_rounded,
      selected: false,
    ),
    Country(
      src: 'https://cdn-icons-png.flaticon.com/128/206/206807.png',
      name: 'Andorra',
      signalStrength: FontAwesomeIcons.signal,
      button: Icons.radio_button_off_rounded,
      selected: false,
    ),
    Country(
      src: 'https://cdn-icons-png.flaticon.com/128/206/206618.png',
      name: 'Australia',
      signalStrength: FontAwesomeIcons.signal,
      button: Icons.radio_button_off_rounded,
      selected: false,
    ),
    Country(
      src: 'https://cdn-icons-png.flaticon.com/128/555/555490.png',
      name: 'Austria',
      signalStrength: FontAwesomeIcons.signal,
      button: Icons.radio_button_off_rounded,
      selected: false,
    ),
    Country(
      src: 'https://cdn-icons-png.flaticon.com/128/940/940231.png',
      name: 'Bangladesh',
      signalStrength: FontAwesomeIcons.signal,
      button: Icons.radio_button_off_rounded,
      selected: false,
    ),
    Country(
      src: 'https://cdn-icons-png.flaticon.com/128/330/330601.png',
      name: 'Barbados',
      signalStrength: FontAwesomeIcons.signal,
      button: Icons.radio_button_off_rounded,
      selected: false,
    ),
    Country(
      src: 'https://cdn-icons-png.flaticon.com/512/206/206741.png',
      name: 'Brazil',
      signalStrength: FontAwesomeIcons.signal,
      button: Icons.radio_button_off_rounded,
      selected: false,
    ),
    Country(
      src: 'https://cdn-icons-png.flaticon.com/128/206/206693.png',
      name: 'Cambodia',
      signalStrength: FontAwesomeIcons.signal,
      button: Icons.radio_button_off_rounded,
      selected: false,
    ),
    Country(
      src: 'https://cdn-icons-png.flaticon.com/512/555/555607.png',
      name: 'Denmark',
      signalStrength: FontAwesomeIcons.signal,
      button: Icons.radio_button_off_rounded,
      selected: false,
    ),
    Country(
      src: 'https://cdn-icons-png.flaticon.com/128/206/206606.png',
      name: 'India',
      signalStrength: FontAwesomeIcons.signal,
      button: Icons.radio_button_off_rounded,
      selected: false,
    ),
    Country(
      src: 'https://cdn-icons-png.flaticon.com/128/555/555526.png',
      name: 'United States',
      signalStrength: FontAwesomeIcons.signal,
      button: Icons.radio_button_off_rounded,
      selected: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: countries.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: useScreenHeight(10)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              height: useScreenHeight(30),
                              width: useScreenWidth(40),
                              child: Image.network(countries[index].src)),
                          SizedBox(
                            width: useScreenWidth(10),
                          ),
                          Text(
                            countries[index].name,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            countries[index].signalStrength,
                            color: AppColor.green,
                            size: useScreenHeight(18),
                          ),
                          SizedBox(
                            width: useScreenWidth(10),
                          ),
                          Icon(
                            (countries[index].selected
                                ? Icons.radio_button_checked_rounded
                                : countries[index].button),
                            color: countries[index].selected
                                ? AppColor.blue
                                : AppColor.gray1,
                            size: useScreenHeight(20),
                          )
                        ],
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 1.5,
                  )
                ],
              ),
            );
          }),
    );
  }
}
