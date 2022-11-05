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
        title: const Text("SnackBar"),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                // todo Statement Event SnackBar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text(
                      "[SnackBar] Delete profile berhasil.",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    action: SnackBarAction(
                      label: "Cancel",
                      onPressed: () {
                        print("Tidak Jadi Hapus Produk");
                      },
                      textColor: Colors.red,
                    ),
                    backgroundColor: Colors.amber,
                    duration: const Duration(seconds: 5),
                    // pastikan saat gunakan margin. behavior jga ada
                    margin: const EdgeInsets.all(20),
                    behavior: SnackBarBehavior.floating,
                    // membuat border rounded
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                );
              },
              child: const Text("Show SnackBar"))),
    );
  }
}
