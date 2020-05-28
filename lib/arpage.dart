import 'package:flutter/material.dart';

import 'gallery.dart';

class ArPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: InkWell(
          child: Image.asset(
            'assets/images/wp_back_button_icon.png',
            height: 250,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
            InkWell(
            child: Image.asset(
              'assets/images/wp_gallery_button_icon.png',
              height: 250,
            ),
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gallery()));
              },
            ),
          ],
      ),
      body: SafeArea(child: Center()),
    );
  }
}
