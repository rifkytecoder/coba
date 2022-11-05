// todo Home Page
import 'package:flutter/material.dart';

import 'product.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Navigation Page"),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          // todo Navigator push (Pindah Page)
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ProductPage(),
            ),
          );
        },
        child: const Text("Next Page >>>"),
      )),
    );
  }
}
