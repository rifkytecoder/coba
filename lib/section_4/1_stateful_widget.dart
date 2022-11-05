import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// stateless -> tampilan static pada Screen
// stateful -> tampilan dynamic pada Screen

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("StatefulWidget"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // todo text Count nilai
              Text(
                // "0",
                "$nilai",
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // todo event clik input value/nilai ke text
                  ElevatedButton(
                    onPressed: () {
                      // print('Dikurang');
                      nilai = nilai - 1;
                      print(nilai);
                      // method dari StatefulWidget
                      setState(() {});
                    },
                    child: const Icon(Icons.remove),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // print('Ditambah');
                      nilai = nilai + 1;
                      print(nilai);
                      // method dari StatefulWidget
                      setState(() {});
                    },
                    child: const Icon(Icons.add),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
