import 'package:flutter/material.dart';
import 'package:flutter_application_1/signuptask.dart';

class Loginpagetask extends StatelessWidget {
  new({super.key});

  final _formkey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isvisable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.only(left: 70, right: 70),

          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Text(
                  "Wlecome Back",
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),

                Text(
                  "Enter your Creditals to login",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(height: 10),

                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: "User Name",
                    hint: Text("Enter you User Name"),
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.purple,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your UserName';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 10),
                TextFormField(
                  controller: _passwordController,
                  obscureText: isvisable,
                  decoration: InputDecoration(
                    labelText: "Password",

                    prefixIcon: Icon(Icons.lock, color: Colors.purple),
                    suffixIcon: IconButton(
                      onPressed: () {
                        isvisable = !isvisable;

                        // setState(() {});
                      },
                      icon: isvisable
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.password),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 10),

                ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Logging in...'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    }
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purpleAccent,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 150,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),

                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Forgot Password ?",
                  style: TextStyle(color: Colors.purpleAccent),
                ),

                SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Don't have an account ? "),
                    TextButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Signuptask()),
                          ),
                        ),
                      },

                      child: Text(
                        "Sign up",
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
