import 'package:flutter/material.dart';

class NewProfilePage extends StatelessWidget {
  const NewProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "New Profile Page",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'New Profile Page',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
      ),
    );
  }
}
