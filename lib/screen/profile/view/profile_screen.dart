import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Screen"),
      ),
      body:  Column(
        children: [

          const Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(radius: 80,),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder()
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Mobile",
                  prefixIcon: Icon(Icons.mobile_friendly),
                  border: OutlineInputBorder()
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder()
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Bio",
                  prefixIcon: Icon(Icons.note_alt),
                  border: OutlineInputBorder()
              ),
            ),
          ),
          ElevatedButton(onPressed: () {
            Get.offAllNamed("home");
          }, child: const Text("Submit"))
        ],
      ),
    );
  }
}
