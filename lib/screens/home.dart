import 'package:flutter/material.dart';

import 'package:vpn/utils/screen_size.dart';

import '../widgets/home_widgets/appbar_icons.dart';
import '../widgets/home_widgets/connect_button.dart';
import '../widgets/home_widgets/connected_country.dart';
import '../widgets/home_widgets/connection_speed.dart';
import '../widgets/home_widgets/connection_status.dart';
import '../widgets/home_widgets/get_premium.dart';
import '../widgets/home_widgets/ip_address.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: useScreenWidth(15), vertical: useScreenHeight(15)),
            child: Stack(
              children: const [
                AppBarIcons(),
                GetPremium(),
                IPAddress(),
                ConnectButton(),
                ConnectionStatus(),
                ConnectedCountry(),
                ConnectionSpeed()
              ],
            )),
      ),
    );
  }
}
