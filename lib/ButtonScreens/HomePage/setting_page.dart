import 'package:flutter/material.dart';
import 'package:implementation_chips/ButtonScreens/HomePage/new_setting_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Profile Page', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              child: Text('Click'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewSettingPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
