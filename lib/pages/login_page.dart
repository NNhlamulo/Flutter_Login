import 'package:flutter/material.dart';
import 'package:hassemprag/components/my_button.dart';
import 'package:hassemprag/components/my_textfield.dart';
import 'package:hassemprag/components/square_tile.dart';
import 'package:hassemprag/pages/registration_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final surnameController = TextEditingController();
  final confirmPassController = TextEditingController();

  // sign user in method]
  void signUserIn() {}

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
        //centerTitle: true,
        //title: Text(
        // "Vibez",
        //style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        //),
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //const SizedBox(height: 50),

                // logo
                // const Icon(
                //   Icons.add_card,
                //   size: 100,
                // ),

                const SizedBox(height: 50),

                // welcome back, you've been missed!
                Text(
                  'Welcome back you\'ve been missed!',
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

                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Enter Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // sign in button master creating these!!
                MyButton(
                  onTap: signUserIn,
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
                          'Or Sign with',
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

                // google + apple sign in buttons
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: const [
                //     //google button
                //     SquareTile(imagePath: 'lib/images/google.png'),
                //
                //     SizedBox(width: 25),
                //
                //     // apple button
                //     SquareTile(imagePath: 'lib/images/apple.png')
                //   ],
                // ),

                ElevatedButton.icon(
                  onPressed: () {
                    // handle Google sign up
                  },
                  icon: Icon(Icons.person),
                  label: Text('Sign up with Google'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                    minimumSize: Size(200.0, 50.0),
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton.icon(
                  onPressed: () {
                    // handle Apple sign up
                  },
                  icon: Icon(Icons.person),
                  label: Text('Sign up with Apple'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
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
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    minimumSize: Size(200.0, 50.0),
                  ),
                ),

                // not a member? register now
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       'Not a member?',
                //       style: TextStyle(color: Colors.grey[700]),
                //     ),
                //     const SizedBox(width: 4),
                //     const Text(
                //       'Register now',
                //       style: TextStyle(
                //         color: Colors.blue,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ],
                // )
                //This is how you link pages to a button(Master This!!!!)
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => registration(onTap: () {
                                  debugPrint(
                                      'The button was tapped successfully');
                                })));
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "don't have an account?",
                            style: TextStyle(color: Colors.grey.shade800)),
                        TextSpan(
                            text: "Register now!!",
                            style: TextStyle(color: Colors.blue))
                      ],
                    ),
                  ),
                ),
                // TextButton(
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (builder) => forgotpass(onTap: () {
                //                 debugPrint('The button was tapped successfully');
                //               })));
                //     },
                //     child: RichText(
                //         text: TextSpan(children: [
                //           TextSpan(
                //               text: "don't have an account?",
                //               style: TextStyle(color: Colors.grey.shade800)),
                //           TextSpan(
                //               text: "Register now!!",
                //               style: TextStyle(color: Colors.blue))
                //         ])))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
