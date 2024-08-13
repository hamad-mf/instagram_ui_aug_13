import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
              child: PageView.builder(
                  itemBuilder: (context, index) => Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/2129796/pexels-photo-2129796.png?auto=compress&cs=tinysrgb&w=600'))),
                        child: Column(
                          children: [
                            const Divider(
                              color: Colors.white,
                              thickness: 3,
                            ),
                            const ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                              ),
                              title: Text(
                                "ha_mad.x",
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                "username",
                                style: TextStyle(color: Colors.white),
                              ),
                              trailing: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.white, width: 2)),
                                    child: const Text(
                                      "send message",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Icon(
                                  Icons.favorite_outline,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Icon(
                                  Icons.send_outlined,
                                  color: Colors.white,
                                  size: 40,
                                )
                              ],
                            )
                          ],
                        ),
                      )))),
    );
  }
}
