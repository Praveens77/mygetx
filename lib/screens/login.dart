import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygetx/controllers/auth_controller.dart';
import 'package:mygetx/screens/register.dart';

class Login extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome back",
                style: Get.textTheme.headline4,
              ),
              SizedBox(height: 50,),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Enter email"
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.verified),
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Enter password (min. 6 char)"
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // this is for the login function in auth controller
                      AuthController.authInstance.login(
                        emailController.text.trim(),
                        passwordController.text.trim(),
                      );
                    },
                    child: const Text("Login"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() =>Register());
                    },
                    child: const Text("Register"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}