import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygetx/screens/page1.dart';
import 'package:mygetx/screens/page2.dart';

import '../controllers/auth_controller.dart';
import 'page3.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome user!"),
        actions: [
          IconButton(
              onPressed: () {
                // this icon button is for the user to signout
                AuthController.authInstance.signOut();
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 250,),
            ElevatedButton(
              onPressed: () {
                Get.to(()=>MyApp());
              },
              child: const Text("Calculator"),
            ),
            SizedBox(height: 40,),
            ElevatedButton(
              onPressed: () {
                Get.to(()=>Page2());
              },
              child: const Text("Page 2"),
            ),
            SizedBox(height: 40,),
            ElevatedButton(
              onPressed: () {
                Get.to(()=>Page3());
              },
              child: const Text("Page 3"),
            ),
          ],
        ),
      ),
    );
  }
}