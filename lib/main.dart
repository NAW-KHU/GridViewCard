// form validation in flutter
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    // _formKey.currentState.save();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Validation"),
        leading: const Icon(Icons.filter_vintage),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        //form
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Center(
                  child: Text(
                    "Form-Validation In Flutter",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                // styling
                SizedBox(height: MediaQuery.of(context).size.width * 0.1),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'E-Mail'),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    // validator
                  },
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-0.a-zZ-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
              //box styling
              SizedBox(
                height: MediaQuery.of(context).size.width*0.1,
              ),
              TextFormField(
                decoration:const InputDecoration(labelText: 'Password'),
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value){},
                obscureText: true,
                validator: MultiValidator([
                    MinLengthValidator(8, errorText: 'Enter a valid password lenght!'),
                    PatternValidator(
                                r'(?=.*?[#!@$%^&*-]',
                                caseSensitive: true,
                                errorText:
                                    'Password must be at least one special character',
                              )]).call,
                  
                  // {
                    
                  //   return 'Enter a valid password!';
                  // }
                  // return null;
                // } 
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width*0.1),
                
              ElevatedButton(
                  
                  style: ButtonStyle(
                    backgroundColor:const MaterialStatePropertyAll(Colors.blue),
                    shape:MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                  ),
                  onPressed: () => _submit(),
                  child:
                    const Padding(
                      padding:EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                      child: Text("Submit",
                        style: TextStyle(fontSize: 24.0),
                      ),
                  ), 
                 
                ),
                
              ],
              
            )),
      ),
    );
  }
}

