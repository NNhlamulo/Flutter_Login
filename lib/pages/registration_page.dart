import 'package:flutter/material.dart';
import 'package:hassemprag/components/my_textfield.dart';
import 'package:hassemprag/components/signup_button.dart';

class registration extends StatelessWidget {
  final Function()? onTap;

  registration({super.key, required this.onTap});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final surnameController = TextEditingController();
  final confirmPassController = TextEditingController();
  final emailController = TextEditingController();

  void signUp() {}

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'lib/images/vibes.png',
          fit: BoxFit.contain,
          height: h * 0.09,
          width: w * 0.5,
        ),
        backgroundColor: Colors.white12,
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                // welcome back, you've been missed!
                Text(
                  'Register an Account',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                // username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Enter Username',
                  obscureText: false,
                ),
                const SizedBox(height: 10),

                //Surname Textfield
                MyTextField(
                  controller: surnameController,
                  hintText: 'Enter Surname',
                  obscureText: false,
                ),

                //Email Textfield
                const SizedBox(height: 10),
                MyTextField(
                  controller: emailController,
                  hintText: 'Enter Email',
                  obscureText: false,
                ),
                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Enter Password',
                  obscureText: true,
                ),

                //Confirm Password Textfield

                const SizedBox(height: 10),
                MyTextField(
                  controller: confirmPassController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),
                const SizedBox(height: 10),

                const SizedBox(height: 25),

                // sign up button
                SignUpButton(
                  onTap: signUp,
                ),

                const SizedBox(height: 50),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Sign up with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.person),
                  label: Text('Sign up with Google'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.red,
                    onPrimary: Colors.white,
                    minimumSize: Size(200.0, 50.0),
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.person),
                  label: Text('Sign up with Apple'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: Size(200.0, 50.0),
                  ),
                ),

                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    // handle Apple sign up
                  },
                  icon: Icon(Icons.email),
                  label: Text('Sign up with Email'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    minimumSize: Size(200.0, 50.0),
                  ),
                ),

                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
