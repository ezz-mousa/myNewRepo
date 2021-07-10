import 'package:flutter/material.dart';
import 'package:hamed_zizo/shared/components/components.dart';

class LoginScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: emailController,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    validator: (dynamic value) {
                      if (value.isEmpty) {
                        return 'Email must not be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                   TextFormField(
                    controller: passwordController,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    validator: (dynamic value) {
                      if (value.isEmpty) {
                        return 'Password must not be empty';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon:(

                         Icon(
                          Icons.remove_red_eye,
                        )
                      ),

                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                    ),
                
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultButton(
                    text: 'Login',
                    heightt: 45,
                    background: Colors.blue,
                    width: double.infinity,
                  ),
                  /* SizedBox(height: 10,),
                  defaultButton(
                    background: Colors.red,

                    function: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    text: 'REgister',
                    isUpperCase: false,
                    heightt: 45,
                  ),*/
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
