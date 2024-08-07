import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_signup_3/signup_page.dart';

class AcceuilPage extends StatefulWidget {
  const AcceuilPage({super.key});

  @override
  State<AcceuilPage> createState() => _AcceuilPageState();
}

class _AcceuilPageState extends State<AcceuilPage> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(fit: BoxFit.cover, "assets/image/4558.png"),
            ),
            Positioned(
                top: 240,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      child: Text(
                        "Hi!",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                          child: Container(
                            height: 550,
                            width: MediaQuery.of(context).size.width * 0.92,
                            color: const Color(0xff2f2b2c).withOpacity(0.5),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Form(
                                    key: formKey,
                                    child: TextFormField(
                                      controller: emailController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Veuillez remplir le champs";
                                        } else {
                                          return null;
                                        }
                                      },
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide.none),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color.fromARGB(
                                                    255, 0, 253, 8)),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          hintText: "Email",
                                          label: const Text("email"),
                                          filled: true,
                                          fillColor: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 330,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff01c38e),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                      child: Text(
                                    "Continue",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20, bottom: 20),
                                  child: Center(
                                    child: Text(
                                      "Or",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                    height: 50,
                                    width: 330,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Row(children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.facebook_rounded,
                                        size: 30,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "Continue with Facebook",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ])),
                                const SizedBox(
                                  height: 25,
                                ),
                                Container(
                                    height: 50,
                                    width: 330,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Row(children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 15),
                                        child: Image(
                                            image: AssetImage(
                                                "assets/image/Nouveau-logo-Google.png")),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "Continue with Facebook",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ])),
                                const SizedBox(
                                  height: 25,
                                ),
                                Container(
                                    height: 50,
                                    width: 330,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Row(children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.apple,
                                        size: 30,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "Continue with Apple",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ])),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, top: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "Don't have an account ? ",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const SignupPage()));
                                            },
                                            child: const Text(
                                              "Sign up",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xff01c38e)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text("Forgot your password ?",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Color(0xff01c38e))),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
