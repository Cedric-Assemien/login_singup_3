// ignore_for_file: camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController mdpController;

  @override
  void initState() {
    super.initState();
    mdpController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
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
                        "Log in",
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
                                      child: const Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 30,
                                            backgroundImage: AssetImage(
                                                "assets/image/ITHQ SCHOOL RECRUITMENT.jpeg"),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Jane Down",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "cedric.assemien@gmail.com",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          )
                                        ],
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Form(
                                    key: formKey,
                                    child: TextFormField(
                                      obscureText: true,
                                      controller: mdpController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
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
                                  ),
                                ),
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
                                      "Continue",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    )),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      top: 30, right: 150),
                                  child: Text(
                                    "Forgot your password ?",
                                    style: TextStyle(
                                        color: Color(0xff01c38e),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
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
