import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Get.to(()=>Home());
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Second Screen",
          style: TextStyle(
            color: Colors.purple,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}