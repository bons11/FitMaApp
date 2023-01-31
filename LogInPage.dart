import 'package:flutter/material.dart';
import 'SignUpPage.dart';

bool _showPassword = false;


class LogInPage extends StatefulWidget {
  @override
  State<LogInPage> createState() => _LogInPageState();
}
class _LogInPageState extends State<LogInPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff0D3728), Color(0xff3D5E52)])),


      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: Center( //username Textfield
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[

                Container(
                  margin: const EdgeInsets.only(top: 250.0, bottom: 30.0),
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Center(
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black38,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: const Color(0xff95E1E9)
                              .withOpacity(0.5),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: const Color(0xff95E1E9)
                              .withOpacity(0.5)
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: const Color(0xff95E1E9)
                              .withOpacity(0.5)
                          ),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        labelText: 'Username',
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'Enter Username',
                        hintStyle: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),


                Container( // Password Textfield
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    obscureText: !_showPassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black38,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: const Color(0xff95E1E9)
                            .withOpacity(0.5)
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: const Color(0xff95E1E9)
                            .withOpacity(0.2)
                        ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.white),
                      hintText: 'Enter Password',
                      hintStyle: const TextStyle(color: Colors.white),
                      suffixIcon: GestureDetector(
                        child: Icon(
                            _showPassword ? Icons.visibility : Icons
                            .visibility_off,
                          color: Colors.white30,
                        ),
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                    ),
                  ),
                ),

                Container( //Forgot Pass Button
                  margin: const EdgeInsets.only(left: 220.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Forgot Password?',
                        style: TextStyle(color: Color(0xff64d9e7))),

                  ),
                ),

                const SizedBox(height: 10),

                Container(// LogIn Button
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      color: const Color(0xff95E1E9).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Container( // SignUp Button
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      color: const Color(0xff95E1E9).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: TextButton(
                    child: const Text('SIGN UP',
                        style: TextStyle(color: Colors.white, fontSize: (25))),

                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },

                  ),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}



