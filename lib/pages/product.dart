// todo Product Page
import 'package:flutter/material.dart';

import 'profile.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(), // hilangkan icon panah back
        title: const Text("Product Page"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Product Page",
            style: TextStyle(fontSize: 50),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    // Navigator.pop(context); opsi simple sama pop juga
                  },
                  child: const Text("<< Back Home Page")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    );
                  },
                  child: const Text("Next Page Profile >>")),
            ],
          ),
        ],
      ),
    );
  }
}
