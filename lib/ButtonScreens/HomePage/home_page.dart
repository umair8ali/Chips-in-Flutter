import 'package:flutter/material.dart';
import 'package:implementation_chips/ButtonScreens/HomePage/new_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Page', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              child: Text('Click'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewHomePage(),
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
