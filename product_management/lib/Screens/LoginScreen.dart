import 'package:flutter/material.dart';
import 'package:product_management/Screens/SignupScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _HomePageState();
}

class _HomePageState extends State<LoginScreen> {
  @override

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? email,password;


  @override
  void initState() {
    super.initState();
    email = '';
    password = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Form(
        key: _formkey,
        child: Center(
          child: 
            Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    

                    // For the email field
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (input){
                          if(input!.isEmpty){
                            return 'Please Provide Email Id';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          label: Text('Eamil Id'),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.login),
                        ),
                        onChanged: (String input) => email = input,
                      ),
                    ),

                    // For the password field
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        obscureText: true,
                        validator: (input){
                          if(input!.isEmpty){
                            return 'Please Provide Password';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          label: Text('Password'),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.password),
                        ),
                        onChanged: (String input) => password = input,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: (){},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue
                        ),
                        child: const Text('Login',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: const Text('SignUp',style: TextStyle(color: Colors.blue,fontSize: 15.0),),
                        onTap: (){
                          navigateToSignUpScreen();
                        },
                      )
                    ),
                  ],
                ),
              )
            )
        )
    );
  }


  navigateToSignUpScreen(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignupScreen()));
  }
}