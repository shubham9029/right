import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/helper/auth_helper.dart';

class RegistorScreen extends StatefulWidget {
  const RegistorScreen({super.key});

  @override
  State<RegistorScreen> createState() => _RegistorScreenState();
}

class _RegistorScreenState extends State<RegistorScreen> {
  TextEditingController txtemail2 = TextEditingController();
  TextEditingController txtpass2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: txtemail2,
                decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: txtpass2,
                decoration: const InputDecoration(
                  labelText: "password",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                ),
              ),
              TextButton(
                  onPressed: () async {
                    String? msg = await AuthHelper.helper
                        .signUp(txtemail2.text, txtpass2.text);
                    if (msg == "Success") {
                      Get.back();
                    } else {
                      Get.snackbar("$msg", "");
                    }
                  },
                  child: const Text(
                    "Sing Up",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              TextButton(
                  onPressed: () {
                    Get.offAllNamed("login");
                  },
                  child: const Text(
                    "Alredy Have Account Sign In",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
