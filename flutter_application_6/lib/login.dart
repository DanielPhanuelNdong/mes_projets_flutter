import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: RadialGradient(
          colors: [
            Colors.white,
            Color.fromRGBO(33, 150, 243, 1),
            Color.fromARGB(255, 182, 218, 247),
            Colors.blueAccent
          ],
          radius: 4,
          //tileMode: TileMode.repeated,
          center: Alignment.bottomLeft,
        )),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 70, right: 190),
                  child: Text(
                    'Welcom\nBack',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                endroit(TextInputType.emailAddress, false, 'email'),
                const SizedBox(
                  height: 30,
                ),
                endroit(TextInputType.visiblePassword, true, 'passe'),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Sign In',
                        style: TextStyle(
                            color: Color.fromARGB(255, 39, 39, 39),
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor:
                              const Color.fromARGB(255, 201, 224, 243),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward,
                              color: Color.fromARGB(255, 19, 19, 19),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Color.fromARGB(255, 39, 39, 39),
                              fontSize: 20,
                            ),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password',
                            style: TextStyle(
                              color: Color.fromARGB(255, 39, 39, 39),
                              fontSize: 20,
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget endroit(TextInputType textinp, bool obscur, String tex) {
  return Padding(
    padding: const EdgeInsets.only(right: 30),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 9,
            )
          ]),
      child: TextField(
        keyboardType: textinp,
        obscureText: obscur,
        decoration: InputDecoration(
          //labelText: 'name',
          //labelStyle: TextStyle(color: Color.fromARGB(255, 0, 72, 195).withOpacity(.3), fontSize: 20, fontWeight: FontWeight.bold),
          hintText: tex,
          hintStyle:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          fillColor: Colors.white,
          filled: true,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),
    ),
  );
}
