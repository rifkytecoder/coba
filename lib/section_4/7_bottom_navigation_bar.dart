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

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // todo indexing default Navigation Bar
  late int indexing;
  @override
  void initState() {
    indexing = 0;
    super.initState();
  }

  // todo slider body widget
  List showWidget = [
    const Center(
      child: Text("Home"),
    ),
    const Center(
      child: Text("Cart"),
    ),
    const Center(
      child: Text("Profile"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Bottom Navigation Bar"),
        centerTitle: true,
      ),
      body: showWidget[indexing],

      // todo BottonNavigationBar
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.pink,
          selectedItemColor: Colors.white,
          currentIndex: indexing,
          onTap: (value) {
            print(value);
            setState(() {
              indexing = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ]),
    );
  }
}
