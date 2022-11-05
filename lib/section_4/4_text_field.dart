import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isHidden = true;

  // Untuk menangkap nilai dari TextField
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TextField"),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // todo TextField Email
            TextField(
              controller: emailC, // textController
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Email",
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: const Icon(Icons.email),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // todo TextField Password
            TextField(
              controller: passC, // textController
              autocorrect: false,
              obscureText: isHidden,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                labelText: "Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                prefixIcon: const Icon(Icons.key),
                suffixIcon: IconButton(
                  onPressed: () {
                    if (isHidden == true) {
                      isHidden = false;
                    } else {
                      isHidden = true;
                    }
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove_red_eye),
                ),
              ),
            ),

            const SizedBox(
              height: 50,
            ),

            // todo Button login
            ElevatedButton(
              onPressed: () {
                print(
                    "Login dengan Email: [ ${emailC.text} ] & Password : [ ${passC.text} ]");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
