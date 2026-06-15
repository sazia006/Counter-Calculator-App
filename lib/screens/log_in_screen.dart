import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import 'sign_up_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6F8),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),

          child: Column(
            children: [

              const SizedBox(height: 30),

              // Title
              const Text(
                "Log in",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Enter your email and password to securely access your account and manage your services.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              // Email Field
              const CustomTextField(
                hintText: "Email address",
                prefixIcon: Icons.email,
              ),

              const SizedBox(height: 20),

              // Password Field
              const CustomTextField(
                hintText: "Password",
                prefixIcon: Icons.lock,
                suffixIcon: Icons.visibility_off,
              ),

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: const [

                  Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 18,
                      ),
                      SizedBox(width: 5),
                      Text("Remember me"),
                    ],
                  ),

                  Text("Forgot Password"),
                ],
              ),

              const SizedBox(height: 25),

              // Login Button
              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    const Color(0xff43C384),

                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(30),
                    ),
                  ),

                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment:
                MainAxisAlignment.center,

                children: [

                  const Text(
                    "Don't have an account? ",
                  ),

                  GestureDetector(
                    onTap: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const SignUpPage(),
                        ),
                      );
                    },

                    child: const Text(
                      "Sign Up here",
                      style: TextStyle(
                        color: Color(0xff43C384),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              const Divider(),

              const SizedBox(height: 25),

              const Text(
                "Or Continue With Account",
              ),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment:
                MainAxisAlignment.center,

                children: [

                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.facebook),
                  ),

                  const SizedBox(width: 20),

                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Text(
                      "G",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.apple),
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