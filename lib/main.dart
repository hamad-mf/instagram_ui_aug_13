import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List mydatalist = [
      {
        "name": "ha_mad.x",
        "dp":
            "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "bg":
            "https://images.pexels.com/photos/1368382/pexels-photo-1368382.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
      },
      {
        "name": "jane_doe",
        "dp":
            "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "bg":
            "https://images.pexels.com/photos/705425/pexels-photo-705425.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
      },
      {
        "name": "john_smith",
        "dp":
            "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "bg":
            "https://images.pexels.com/photos/2043035/pexels-photo-2043035.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
      },
      {
        "name": "alex_k",
        "dp":
            "https://images.pexels.com/photos/1382734/pexels-photo-1382734.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "bg":
            "https://images.pexels.com/photos/1264075/pexels-photo-1264075.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
      },
      {
        "name": "maria_g",
        "dp":
            "https://images.pexels.com/photos/1181695/pexels-photo-1181695.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "bg":
            "https://images.pexels.com/photos/3822971/pexels-photo-3822971.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
      }
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
              child: PageView.builder(
                  itemCount: mydatalist.length,
                  itemBuilder: (context, index) => Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(mydatalist[index]["bg"]))),
                        child: Column(
                          children: [
                            const Divider(
                              color: Colors.white,
                              thickness: 3,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(mydatalist[index]["dp"]),
                              ),
                              title: Text(
                                mydatalist[index]["name"],
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                mydatalist[index]["name"],
                                style: const TextStyle(color: Colors.white),
                              ),
                              trailing: const Icon(
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
