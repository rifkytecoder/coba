import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
        centerTitle: true,
      ),

      // todo Drawer
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              color: Colors.blue,
              child: const Text(
                "Dasboard Menu",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),

            // todo Listview dan ListTile
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text("Home"),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () => print("Route Home Page"),
                  ),
                  ListTile(
                    leading: const Icon(Icons.favorite),
                    title: const Text("Favorite"),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () => print("Route Favorite"),
                  ),
                  ListTile(
                    leading: const Icon(Icons.shopping_bag),
                    title: const Text("Product"),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () => print("Route Product"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
