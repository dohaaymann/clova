import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:walid_project/sigup.dart';
import 'package:walid_project/widgets/textfield.dart';

import 'homescreen.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

bool obscure = true;

class _loginState extends State<login> {
  @override
  var _email = TextEditingController();
  var _pass = TextEditingController();
  var auth = FirebaseAuth.instance;

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Image.asset(
              "image/login.jpeg",
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  textfield("Phone", _email),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: obscure,
                    controller: _pass,
                    style: TextStyle(fontSize: 22),
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                        icon: !obscure
                            ? Icon(Icons.remove_red_eye,
                                color: Color(0xffE73794))
                            : FaIcon(CupertinoIcons.eye_slash,
                                color: Color(0xffE73794)),
                        onPressed: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                      ),
                      hintStyle: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffE73794)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Color(0xffE73794)),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                                fontSize: 13, color: Color(0xffE73794)),
                          ))),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () async {
                      if (_email.text.isEmpty || _pass.text.isEmpty) {
                        print("emptyyyy");
                        Get.snackbar("Erorr", "Please fill out this fields",
                            backgroundColor: Colors.red,
                            colorText: Colors.white);

                        return null;
                      } else {
                        var user;
                        try {
                          user = await auth
                              .signInWithEmailAndPassword(
                                  email: _email.text, password: _pass.text)
                              .catchError((err) {
                            if (err.code == "invalid-email") {
                              return Get.snackbar(
                                  "Error", "Please enter a valid email address",
                                  backgroundColor: Colors.red);
                            }
                            if (err.message ==
                                "The password is invalid or the user does not have a password.") {
                              return Get.snackbar(
                                  "Error", "ًWrong email address or password",
                                  backgroundColor: Colors.red);
                            }
                            if (err.message ==
                                "There is no user record corresponding to this identifier. The user may have been deleted.") {
                              return Get.snackbar(
                                  "Error", "Email is not register with us",
                                  backgroundColor: Colors.red);
                            }
                            return Get.snackbar("Error", err.message,
                                backgroundColor: Colors.red);
                          });
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'user-not-found') {
                            print('No user found for that email.');
                          } else if (e.code == 'wrong-password') {
                            print('Wrong password provided for that user.');
                          }
                        }
                        if (user != null) {
                          print("------ login successfuly-------");
                          print("email: " + "${_email.text}");
                          print("pass: " + "${_pass.text}");
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => homescreen(),));
                        }
                      }
                    },
                    child: Container(
                      width: 350,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.yellow,
                            Colors.orange,
                            Color(0xffE73794),
                          ],
                        ),
                      ),
                      child: Text(
                        "LOG IN",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => signup(),
                              ));
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffE73794)),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
