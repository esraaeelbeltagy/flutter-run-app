import 'package:flutter/material.dart';
import 'package:flutter_sheet/home.dart';
import 'package:flutter_sheet/my_bottom_bar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28333F),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        backgroundColor: const Color(0xff28333F),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Image.asset('assets/images/Logo.png'),
            const SizedBox(
              height: 30,
            ),
            const Text(
              textAlign: TextAlign.start,
              'Log In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            // the column that contain form
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: emailController,
                    validator: (data) {
                      final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                      if (data!.isEmpty) {
                        return 'this field is required';
                      }
                      if (!regex.hasMatch(data)) {
                        return 'your email is not valid';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff7B61FF),
                          width: .5,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff7B61FF),
                          width: .5,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff7B61FF),
                          width: .5,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    enabled: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: passController,
                    validator: (pass) {
                      final regex = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                      if (pass!.isEmpty) {
                        return 'this field is required';
                      }
                      if (!regex.hasMatch(pass)) {
                        return "invalid password";
                      }

                      if (pass.length < 8) {
                        return 'your password is less than 8 character';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Color(0xff7B61FF),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff7B61FF),
                          width: .5,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff7B61FF),
                          width: .5,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff7B61FF),
                          width: .5,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    enabled: true,
                    obscureText: !_passwordVisible,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.check_box_rounded,
                            color: Color(0xff7B61FF),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            'Remember Me ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Text(
                        textAlign: TextAlign.start,
                        'Forgot Password ?',
                        style: TextStyle(
                            color: Color(0xff7B61FF),
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                        color: const Color(0xff7B61FF),
                        borderRadius: BorderRadius.circular(25)),
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottomBar()),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff7B61FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            Row(
              children: [
                Container(
                  width: 80,
                  height: 1,
                  decoration: BoxDecoration(
                    color: const Color(0xff4B576B),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const Expanded(
                  child: Text(
                    'Or continue with',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff4B576B),
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 1,
                  decoration: BoxDecoration(
                    color: const Color(0xff4B576B),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      color: const Color(0xff2B3744),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: .1)),
                  child: Image.asset('assets/images/Google-logo.png'),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      color: const Color(0xff2B3744),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: .1)),
                  child: Image.asset('assets/images/Facebook-logo.png'),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      color: const Color(0xff2B3744),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: .1)),
                  child: Image.asset('assets/images/twitter.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  'New User?  ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
                InkWell(
                  child: Text(
                    textAlign: TextAlign.start,
                    'Sign Up',
                    style: TextStyle(
                        color: Color(0xff7B61FF),
                        fontSize: 15,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 25,
            ),
          ]),
        ),
      ),
    );
  }
}
