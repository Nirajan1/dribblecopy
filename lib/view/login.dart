import 'package:copyd/screen/home_screen.dart';
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
                height: 200,
              ),
              Container(
                width: Get.size.width,
                height: 507,
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
                            height: 424,
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                // color: Colors.amber[100],
                                ),
                            child: Column(
                              children: [
                                //user id field
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0))),
                                      suffixIcon: Icon(Icons.person),
                                      hintText: 'UserName',
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'user name required';
                                      }
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                //password Field
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20.0))),
                                        prefixIcon: const Icon(Icons.lock),
                                        suffixIcon: IconButton(
                                            onPressed: () {
                                              showpassword = !showpassword;
                                              setState(() {});
                                            },
                                            icon: showpassword == true
                                                ? const Icon(Icons
                                                    .visibility_off_outlined)
                                                : const Icon(
                                                    Icons.visibility_outlined)),
                                        hintText: 'Password'),
                                    obscureText: showpassword,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'password required';
                                      }
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // Remember me check box
                                Row(
                                  children: const [
                                    Text('Remember me'),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                //login botton field
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
                                            Get.to(const HomeViewScreen());
                                            if (key.currentState!.validate()) {
                                              Get.offAll(
                                                  () => const HomeViewScreen());
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
                                //forget password field
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text('Forget Password?'),
                                    ),
                                  ],
                                ),
                                //  other Options to login
                                const Text('-OR-'),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.facebook,
                                        size: 40,
                                        color: Color(0xff277ebe),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('Need and account?'),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text('SIGN UP'))
                                  ],
                                )
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
