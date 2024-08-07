import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_signup_3/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController nomController;
  late TextEditingController mdpController;

  @override
  void initState() {
    super.initState();
    nomController = TextEditingController();
    mdpController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nomController.dispose();
    mdpController.dispose();
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
                        "Sign up",
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
                            width: MediaQuery.of(context).size.width * 0.92,
                            color: const Color(0xff2f2b2c).withOpacity(0.5),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      child: RichText(
                                          text: const TextSpan(
                                        text:
                                            "Looks like you don't have an account.\nLet's create a new account for\n",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                        children: [
                                          TextSpan(
                                              text:
                                                  "cedric.assemien2001@gmail.com",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold))
                                        ],
                                      ))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Form(
                                    key: formKey,
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          controller: nomController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
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
                                              hintText: "Name",
                                              label: const Text("Name"),
                                              filled: true,
                                              fillColor: Colors.white),
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        TextFormField(
                                          obscureText: true,
                                          controller: mdpController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return "Veuillez remplir le champs";
                                            } else {
                                              return null;
                                            }
                                          },
                                          decoration: InputDecoration(
                                              suffixText: "View",
                                              suffixStyle: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15),
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
                                              hintText: "Password",
                                              label: const Text("Password"),
                                              filled: true,
                                              fillColor: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text:
                                          "By selecting Agree and continue below,\nI agree to",
                                      style: TextStyle(fontSize: 16),
                                      children: [
                                        TextSpan(
                                            text:
                                                " Terms of Service and Privacy Policy",
                                            style: TextStyle(
                                                color: Color(0xff01c38e)))
                                      ]),
                                ),
                                const SizedBox(height: 25),
                                InkWell(
                                  onTap: () {
                                    if (formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const login_page()));
                                    }
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 330,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff01c38e),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Center(
                                        child: Text(
                                      "Agree and Continue",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
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
