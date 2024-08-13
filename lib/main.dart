import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: PageView.builder(
                  itemBuilder: (context, index) => Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/27354543/pexels-photo-27354543/free-photo-of-two-buildings-with-balconies-and-windows-in-the-city.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'))),
                      )))),
    );
  }
}
