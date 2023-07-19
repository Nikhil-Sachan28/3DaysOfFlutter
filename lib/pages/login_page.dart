import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/routes.dart';


class LoginPage extends StatefulWidget{


  @override
  _LoginPageState createState()  => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // const LoginPage({super.key});
  String name = "";
  bool changeButton = false;


  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_img.png"),
             const SizedBox(
               height: 20.0,
             ),
             Text("Welcome $name", style: const TextStyle(
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
                  onChanged: (value){
                    name = value;
                    setState(() {});
                  },
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
                InkWell(
                  onTap: () async{
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    width: changeButton? 50: 400,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: changeButton?BorderRadius.circular(50):BorderRadius.circular(8),

                    ),
                    duration: const Duration(seconds: 1),
                    child: changeButton? const Icon(
                        Icons.done,
                      color: Colors.white,
                    ):const Text(
                      "Login",

                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,


                      ),
                    ),

                  ),
                )
                // ElevatedButton(onPressed: () { Navigator.pushNamed(context, MyRoutes.homeRoute);},
                //   style:TextButton.styleFrom(minimumSize: const Size(400,30)),
                //   child: const Text("Login"),
                // )
              ],
            )
              ,)


          ],
        ),
      )
    );
  }
}
