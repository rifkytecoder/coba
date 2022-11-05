import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//! NB : pastikan Widget Scaffold di  extract Widget(HomePage) agar show dialog jadi
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
        title: const Text("Dialog"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                // border
                shape: const RoundedRectangleBorder(
                    // todo border all rounded
                    // borderRadius: BorderRadius.circular(10),
                    // todo custome side bordered round
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15))),
                title: const Text("Judul Dialog"),
                content: const Text("Ini adalah sebuah description dialog"),
                actions: [
                  ElevatedButton(onPressed: () {}, child: const Text("OK")),
                  ElevatedButton(onPressed: () {}, child: const Text("Cancel")),
                ],
              ),
            );
          },
          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}
