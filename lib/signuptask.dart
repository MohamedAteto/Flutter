import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:flutter_application_1/loginpagetask.dart';

class Signuptask extends StatelessWidget {
  new({super.key});

  final _formkey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isvisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.all(50),

          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),

                Text(
                  "Create Your Account",
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
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hint: Text("Enter you Email"),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.purple,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Email';
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
                    prefixIcon: Icon(Icons.lock_outline, color: Colors.purple),
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

                TextFormField(
                  controller: _confirmpasswordController,
                  obscureText: isvisable,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    prefixIcon: Icon(Icons.lock_outline, color: Colors.purple),
                    suffixIcon: IconButton(
                      onPressed: () {
                        isvisable = !isvisable;

                        // setState(() {});
                      },
                      icon: isvisable
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.remove_red_eye_rounded),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Confirmation password';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 15),

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

                SizedBox(height: 20),

                Text(
                  "____________ Or ___________ ",
                  style: TextStyle(color: Colors.purpleAccent),
                ),
                SizedBox(height: 10),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.purple,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},

                    style: ElevatedButton.styleFrom(
                      // foregroundColor: Colors.deepPurple,
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 150,
                      ),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),

                    child: Text(
                      "Sign Up With Google",
                      style: TextStyle(fontSize: 15, color: Colors.purple),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Already have an account  ? "),
                    TextButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Loginpagetask()),
                          ),
                        ),
                      },
                      child: Text(
                        "Login",
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
