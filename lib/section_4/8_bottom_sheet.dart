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
        title: const Text("Bottom Sheet"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // todo Show Bottom Sheet
              showModalBottomSheet(
                context: context,
                isDismissible:
                    false, // agar tdk bisa cancel diklic layar belakangnya
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                builder: (context) {
                  return SizedBox(
                    height: 300,
                    // color: Colors.yellow,

                    // todo ListTile bottom Sheet
                    child: ListView(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.photo),
                          title: const Text("Photo"),
                          onTap: () => print("Event Click Photo"),
                        ),
                        ListTile(
                          leading: const Icon(Icons.music_note),
                          title: const Text("Music"),
                          onTap: () => print("Event Click Music"),
                        ),
                        ListTile(
                          leading: const Icon(Icons.video_collection),
                          title: const Text("Vidio"),
                          onTap: () => print("Event Click Vidio"),
                        ),
                        ListTile(
                          leading: const Icon(Icons.share),
                          title: const Text("Share"),
                          onTap: () => print("Event Click Share"),
                        ),
                        ListTile(
                            leading: const Icon(Icons.cancel),
                            title: const Text("Cancel"),
                            onTap: () => Navigator.pop(
                                context) // agar bisa cancel layer sizedbox nya
                            ),
                      ],
                    ),
                  );
                },
              );
            },
            child: const Text("Show Bottom Sheet")),
      ),
    );
  }
}
