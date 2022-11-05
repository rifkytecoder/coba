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
    //! pastikan gunakan DefaultTabController saat gunakan TabBar
    return DefaultTabController(
      length: 4, // mengikuti berapa bar yg di gunakan
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsUps"),
          centerTitle: false,
          backgroundColor: Colors.teal,
          // todo TabBar
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            ),
          ]),
        ),

        //todo body
        body: const TabBarView(
          children: [
            Center(child: Text("Camera")),
            Center(child: Text("Chats")),
            Center(child: Text("Status")),
            Center(child: Text("Calls")),
          ],
        ),
      ),
    );
  }
}
