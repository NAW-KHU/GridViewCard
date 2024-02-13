//geeksforgeeks: Login.dart
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: Login(),
//   ));
// }

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Map userData = {};
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.green[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Image.asset('assets/images/logo.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                    key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'Enter email address'),
                              EmailValidator(errorText: 'Please correct email')
                            ]).call,
                            decoration: InputDecoration(
                                hintText: 'Email',
                                labelText: 'Email',
                                prefixIcon: const Icon(
                                  Icons.email,
                                  color: Colors.green,
                                ),
                                errorStyle: const TextStyle(fontSize: 15.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(9.0),
                                  borderSide:
                                      const BorderSide(color: Colors.blue),
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(
                                errorText: 'Please enter Password',
                              ),
                              MinLengthValidator(8,
                                  errorText:
                                      'Password must be at least 8 digits'),
                              PatternValidator(
                                r'(?=.*?[#!@$%^&*-]',
                                caseSensitive: true,
                                errorText:
                                    'Password must be at least one special character',
                              ),
                            ]).call,
                            decoration: InputDecoration(
                                hintText: 'Password',
                                labelText: 'Password',
                                prefixIcon: const Icon(
                                  Icons.key,
                                  color: Colors.green,
                                ),
                                errorStyle: const TextStyle(fontSize: 15.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(9),
                                  borderSide:
                                      const BorderSide(color: Colors.green),
                                )),
                            obscureText: true,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(270, 0, 0, 0),
                          child: const Text('Forget Password!'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Center(
                            // width: 300,
                            // height: 40,

                            child: ElevatedButton(
                                onPressed: () {
                                  if (_formkey.currentState!.validate()) {
                                    if (kDebugMode) {
                                      print('form submitted!');
                                    }
                                  }
                                },
                                style: ButtonStyle(
                                  padding: const MaterialStatePropertyAll(
                                      EdgeInsets.all(15)),
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          Colors.green),
                                  alignment: Alignment.center,
                                  minimumSize: const MaterialStatePropertyAll(
                                      Size(300, 50)),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  // maximumSize: MaterialStatePropertyAll(Size(width, height)) ,
                                ),
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )),
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                            child: Center(
                              child: Text(
                                'Or Sign in Using!',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset(
                                      'assets/images/googleIcon.jpeg',
                                      fit: BoxFit.cover,
                                      scale: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Center(
                          child: Container(
                            padding: const EdgeInsets.only(top: 50),
                            child: const Text(
                              'SIGN UP!',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.lightBlue,
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
