import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_food/components/my_buttons.dart';
import 'package:order_food/components/my_textfielld.dart';

class  LoginPage extends StatefulWidget {
  final void Function()?onTap;


  const LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController=TextEditingController();

  final TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //logo
            Icon(
              Icons.lock_clock_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,

            ),
            const SizedBox(height: 25),

            // Slogan message
            Text(
                "Food Delivery app",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,

              ),
            ),
            const SizedBox(height: 25),

            //Email field

            MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false,
            ),
            const SizedBox(height: 25),
            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
            const SizedBox(height: 25),

            //Login Button
            MyButton(text:"Sign In", onTap: (){},
            ),
            const SizedBox(height: 25),

            // Not a user
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a user?",style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap:widget.onTap ,
                  child: Text("Sign Up now ",style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),

    );
  }
}
