import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/utils.dart';
import 'package:shubham4338/utils/helper/auth_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController txtemail= TextEditingController();
  TextEditingController txtpass= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Sign In",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 20,),
              const Text("Please sign In To Continue",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20,),
               TextField(
                 controller: txtemail,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email)
                ),
              ),
              const SizedBox(height: 20,),
               TextField(
                controller: txtpass,
                decoration: const InputDecoration(
                  labelText: "password",
                    prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                ),
              ),
              TextButton(onPressed: () async {
                String? msg  =  await AuthHelper.helper.signIn(txtemail.text, txtpass.text);

                if(msg=="Success")
                  {
                    Get.offAllNamed("profile");
                  }
                else
                  {
                    Get.snackbar("$msg", "");
                  }

              }, child: const Text("Sing In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              
               TextButton(onPressed: () {
                 Get.toNamed("/register");
               }, child: const Text("Don't Have Account Sing Up",style: TextStyle(fontSize: 20,color: Colors.grey),))
            ],
          ),
        ),
      ),
    );
  }
}
