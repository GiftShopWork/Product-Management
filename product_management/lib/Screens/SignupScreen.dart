import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignupScreen> {

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? switchUser;
  List<String> users = ['Employee','Vendor'];
  @override
  void initState() {
    super.initState();
    switchUser = 'Vendor';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Form(
        key: _formkey,
        child: Center(
          child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    
                  // Selecting whether it is User or Admin.
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DropdownButton(
                      isExpanded: true,
                      value: switchUser,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: users.map((String item){
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (String? item){
                        setState(() {
                          switchUser = item!;
                        });
                      },
                    ),
                  ),
                    
                  // For the email field
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (input){
                        if(input!.isEmpty){
                          return 'Please Enter Name';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        label: Text('Name'),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
        
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
                    ),
                  ),
        
        
                  
                  switchUser == 'Employee' 
                  ? Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (input){
                        if(input!.isEmpty){
                          return 'Enter Code';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Enter Employee code'),
                      ),
                    ),
                  )
                  : Container(),
                  
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue
                      ),
                      child: const Text('SignUp',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                    )
                  ),
                  
                ],
              ),
            ),
          ),
      ),
    );
  }
}