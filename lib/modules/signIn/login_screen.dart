import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/evently_logo.png',
                    height: 200), // Replace with actual logo
                const SizedBox(height: 10),
                const SizedBox(height: 20),
                _buildTextField(Icons.email, "Email"),
                const SizedBox(height: 10),
                _buildTextField(Icons.lock, "Password", isPassword: true),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: Color(0XFF5669FF),
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          decorationThickness: 1.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF5669FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't Have an Account?"),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Create Account",
                        style: TextStyle(
                            color: Color(0XFF5669FF),
                            decoration: TextDecoration.underline,
                            decorationThickness: 1.5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Expanded(child: Divider(color: Color(0XFF5669FF))),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Or"),
                    ),
                    Expanded(child: Divider(color: Color(0XFF5669FF))),
                  ],
                ),
                const SizedBox(height: 10),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/google_icon.png',
                          height: 24), // Replace with actual Google logo
                      const SizedBox(width: 10),
                      const Text("Login With Google"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/america_flag.png',
                        height: 24), // Replace with actual flag images
                    const SizedBox(width: 10),
                    Image.asset('assets/images/egypt_flag.png', height: 24),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(IconData icon, String hintText,
      {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.grey),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: isPassword
            ? IconButton(
                icon: const Icon(Icons.visibility_off, color: Colors.grey),
                onPressed: () {},
              )
            : null,
      ),
    );
  }
}
