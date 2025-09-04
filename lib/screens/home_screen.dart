import 'package:flutter/material.dart';
import 'package:navigate_route/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async{ 
            final result = await  Navigator.pushNamed(
              context,
              DetailScreen.routeName,
              arguments: {'itemId': 'Item-456', 'message': 'ข้อมูลผ่าน arguments'},
            );
            print("ได้ค่ากลับมา คือ: $result");
          },
          child: Text('Go to Detail Screen'),
        ),
      ),
    );
  }
}
