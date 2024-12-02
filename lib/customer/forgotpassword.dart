import 'package:flutter/material.dart';

class forgotpassword extends StatelessWidget {
  const forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(decoration: const BoxDecoration(
             ),
          child: Column(
            children: [
              const Text("Create Your New Password",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
              const SizedBox(height: 10,),
              TextFormField(style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(hintText: "Enter Your Mail",border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),hintStyle: const TextStyle(color: Colors.black))),
              const SizedBox(height: 10,),
              TextFormField(
                style: const TextStyle(color: Colors.black),decoration: InputDecoration(hintText: "New Password",border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),hintStyle: const TextStyle(color: Colors.black))),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, "custlogin");
              }, child: const Text("SUBMIT"))
            ],
          ),
        ),
      ),
    );
  }
}