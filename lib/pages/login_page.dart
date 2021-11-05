import "package:flutter/material.dart";
import 'package:new_apps/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isTouched = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      // appBar: AppBar(
      //   title: const Text("Test App"),
      // ),
      // backgroundColor: Colors.white,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
            const SizedBox(height: 20.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: Form(
                child: Column(
                  children: [
                    const Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                          labelText: "Enter Username", hintText: "Username"),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                          labelText: "Enter Password", hintText: "Password"),
                      obscureText: true,
                    ),
                    const SizedBox(height: 40.0),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 30.0),
                        child: InkWell(
                          onTap: () async {
                            setState(() {
                              _isTouched = true;
                            });
                            await Future.delayed(const Duration(seconds: 1))
                                .then((value) {
                              Navigator.pushNamed(context, MyRoutes.homeRoute);
                              // setState(() {
                              //   _isTouched = false;
                              // });
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: _isTouched ? 50 : 150,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius: _isTouched
                                  ? BorderRadius.circular(25.0)
                                  : BorderRadius.circular(8.0),
                            ),
                            alignment: Alignment.center,
                            child: _isTouched
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                        )
                        // ElevatedButton(
                        //   onPressed: () {
                        //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                        //     // print("hi");
                        //   },
                        //   style: TextButton.styleFrom(
                        //     padding: const EdgeInsets.symmetric(
                        //         vertical: 12.0, horizontal: 42.0),
                        //   ),
                        //   child: const Text(
                        //     "Login",
                        //     // style: TextStyle(
                        //     //     color: Colors.white,
                        //     //     fontWeight: FontWeight.bold,
                        //     //     fontSize: 20.0),
                        //   ),
                        // ),
                        )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
