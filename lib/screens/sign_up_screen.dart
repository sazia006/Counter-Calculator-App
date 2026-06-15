import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffF5F6F8),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),

          child: Column(
            children: [

              // Back Button
              Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },

                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Create a new account to get started and enjoy seamless access to our features.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              const CustomTextField(
                hintText: "Name",
                prefixIcon: Icons.person,
              ),

              const SizedBox(height: 20),

              const CustomTextField(
                hintText: "Email address",
                prefixIcon: Icons.email,
              ),

              const SizedBox(height: 20),

              const CustomTextField(
                hintText: "Password",
                prefixIcon: Icons.lock,
                suffixIcon: Icons.visibility_off,
              ),

              const SizedBox(height: 20),

              const CustomTextField(
                hintText: "Confirm Password",
                prefixIcon: Icons.lock,
                suffixIcon: Icons.visibility_off,
              ),

              const SizedBox(height: 25),

              // Create Account Button
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
                    "Create Account",
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
                    "Already have an account? ",
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },

                    child: const Text(
                      "Sign In here",
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