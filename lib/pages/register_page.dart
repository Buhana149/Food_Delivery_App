import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(height: 25),
          Text(
            "Let's create an account for you",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(height: 25),
          MyTextfield(
            controller: emailController,
            hintText: 'Email',
            obscureText: false,
          ),
          const SizedBox(height: 25),
          MyTextfield(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
          ),
          const SizedBox(height: 25),
          MyTextfield(
            controller: confirmPasswordController,
            hintText: 'Confirm Password',
            obscureText: true,
          ),
          const SizedBox(height: 25),
          MyButton(onTap: () {}, text: 'Sign up'),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  'Login here!',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}