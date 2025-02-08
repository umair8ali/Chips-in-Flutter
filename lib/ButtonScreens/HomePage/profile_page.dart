import 'package:flutter/material.dart';
import 'package:implementation_chips/ButtonScreens/HomePage/new_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Setting Page', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              child: Text('Click'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewProfilePage(),
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
