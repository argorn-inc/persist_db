import 'package:flutter/material.dart';
import 'package:persist_db/home_page.dart';
import 'package:persist_db/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign Up"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.blue,
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.white)),
                    ),
                    const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                          labelText: "Firstname",
                          labelStyle: TextStyle(color: Colors.white)),
                    ),
                    const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                          labelText: "Last name",
                          labelStyle: TextStyle(color: Colors.white)),
                    ),
                    Center(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => HomePage())));
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Row(children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const LoginPage())));
                            },
                            child: const Text(
                              "Login here",
                              style: TextStyle(color: Colors.white),
                            ))
                      ]),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
