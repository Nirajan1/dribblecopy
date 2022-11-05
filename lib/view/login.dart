import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool showpassword = true;
  GlobalKey<FormState> key = GlobalKey<FormState>(); //impt pattern
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff277ebe),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 210,
              ),
              Container(
                width: Get.size.width,
                height: 497,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Builder(builder: (context) {
                  return Form(
                    key: key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff277ebe),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Container(
                            width: Get.size.width,
                            height: 300,
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                              boxShadow: [],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: Icon(Icons.person),
                                          hintText: 'User name'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: const Icon(Icons.lock),
                                          suffixIcon: IconButton(
                                              onPressed: () {
                                                showpassword = !showpassword;
                                                setState(() {});
                                              },
                                              icon: showpassword == true
                                                  ? const Icon(Icons
                                                      .visibility_off_outlined)
                                                  : const Icon(Icons
                                                      .visibility_outlined)),
                                          hintText: 'Password'),
                                      obscureText: showpassword,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text('Forget Password?'),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Color(0xff277ebe),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20.0))),
                                        child: MaterialButton(
                                          onPressed: () {
                                            if (key.currentState!.validate()) {
                                              Get.snackbar(
                                                  "Success", e.toString());
                                            }
                                          },
                                          child: const Text(
                                            'Login',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
