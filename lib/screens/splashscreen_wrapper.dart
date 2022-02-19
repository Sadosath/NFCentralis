import 'package:flutter/material.dart';
import 'package:nfcentralis/models/user.dart';
import 'package:nfcentralis/screens/authenticate/authenticate.dart';
import 'package:nfcentralis/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

class SplashScreenWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser?>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return HomeScreen();
    }
  }
}
