import 'package:flutter/material.dart';
import 'package:nfcentralis/services/authentication.dart';

class HomeScreen extends StatelessWidget {
  final AuthenticationService _auth = AuthenticationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0.0 ,
        title: Text('NFCentralis'),
        actions: <Widget>[
          TextButton.icon(onPressed: () async {
            await _auth.signOut();
          },
              icon: Icon(Icons.person),
              label: Text('logout'),
          )
        ],
      )

    );
  }
}