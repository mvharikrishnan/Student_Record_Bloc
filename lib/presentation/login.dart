import 'package:flutter/material.dart';

import 'package:sample_student_record/presentation/landing_Page/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Welcome to MGU'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  logoforlogin(),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const home_screen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.login_rounded),
                    label: const Text('GET IN'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

// Login Page Logo
  logoforlogin() {
    return const Image(
      image: AssetImage(
        'assets/images/mg-logo.png',
      ),
    );
  }
// end of logologin
}
