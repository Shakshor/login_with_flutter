import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 50),

                  // logo part
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Image(
                          image: AssetImage('images/logo.png'),
                          height: 50,
                          width: 50),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Maintenance',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff203142)),
                          ),
                          Text('Box',
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xfff9703b),
                                fontWeight: FontWeight.w500,
                              ))
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  // text part
                  const Center(
                      child: Text(
                    'Log in',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Rubik Medium',
                        color: Color(0xff203142)),
                  )),
                  const SizedBox(height: 14),


                  // lorem ipsum text
                  const Center(
                      child: Text(
                    "Lorem Ipsum color sit amet,\n"
                    "consctetur adpiscing emit",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Rubik Regular',
                        color: Color(0xff4C5980)),
                  )),

                  // spacing
                  const SizedBox(
                    height: 30,
                  ),

                  // form field with padding widget
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: const TextStyle(
                            fontSize: 18, fontFamily: 'Rubik Regular'),
                        prefixIcon: const Icon(Icons.alternate_email,
                            color: Color(0xff323f48)),
                        fillColor: const Color(0xfff8f9fa),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffE4E7EB)),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffE4E7EB)),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),

                  // form field with padding widget
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20, left: 20, top: 10, bottom: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          fontSize: 18,
                        ),
                        fillColor:const Color(0xfff8f9fa),
                        prefixIcon: const Icon(Icons.lock_open),
                        suffixIcon: const Icon(Icons.visibility_off_outlined),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Color(0xffE4E7EB))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:const BorderSide(color: Color(0xffE4E7EB))),
                      ),
                    ),
                  ),

                  // forget text
                  const Text(
                    'Forget Password?',
                    style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff4C5980),
                        fontWeight: FontWeight.w400,
                    ),

                  ),

                  // spacing
                  const SizedBox(
                    height: 100,
                  ),

                  // login button
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color(0xfff9703b),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Rubik Regular'),
                      ),
                    ),
                  ),

                  // spacing
                  const SizedBox(
                    height: 10,
                  ),

                  // text after login
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik Regular',
                            color: Color(0xff4c5988)),
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik Medium',
                            color: Color(0xfff9703b)),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
