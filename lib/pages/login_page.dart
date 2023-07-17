import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset("assets/images/login_img.png"),
           const SizedBox(
             height: 20.0,
           ),
           const Text("Welcome", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.deepPurple),
           ),
          Padding(padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child:Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username"
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password"
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () { print("welcome user");},
                child: Text("Login"),
                style:TextButton.styleFrom() ,)
            ],
          )
            ,)


        ],
      )
    );
  }
}
