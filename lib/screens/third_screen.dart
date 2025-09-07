import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static String routeName = '/third';
  final String message;
  const ThirdScreen({super.key, required this.message});
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(title: Text('Third Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Item id: ${args['itemId']}'),
            Text('Detail: ${args['message']}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, '[item2 third returned!]');
              },
              child: Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
