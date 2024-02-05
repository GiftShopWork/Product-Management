import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterEmployee extends StatefulWidget {
  const RegisterEmployee({super.key});

  @override
  State<RegisterEmployee> createState() => _RegisterEmployeeState();
}

class _RegisterEmployeeState extends State<RegisterEmployee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Employee'),

      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
                Column(
                  children: [
      
                    // Employee Name
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (input){
                          if(input!.isEmpty){
                            return 'Enter employee name';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Enter Employee Name'),
                          prefixIcon: Icon(Icons.person),
                        ),
                        onChanged: (String inputValue){},
                      ),
                    ),
      
                    // Shop Name
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (input){
                          if(input!.isEmpty){
                            return 'Enter Email Id';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Enter Email Id'),
                          prefixIcon: Icon(Icons.email_outlined),
                        ),
                        onChanged: (String inputValue){},
                      ),
                    ),
      
                    // employee code
                    // Padding(
                    //   padding: const EdgeInsets.all(10.0),
                    //   child: TextFormField(
                    //     keyboardType: TextInputType.number,
                    //     inputFormatters: [
                    //       FilteringTextInputFormatter.digitsOnly,
                    //     ],
                    //     validator: (input){
                    //       if(input!.isEmpty){
                    //         return 'Enter Employee Code';
                    //       }
                    //       return null;
                    //     },
                    //     decoration: const InputDecoration(
                    //       border: OutlineInputBorder(),
                    //       label: Text('Enter Employee Code'),
                    //       prefixIcon: Icon(Icons.person),
                    //     ),
                    //     onChanged: (String inputValue){},
                    //   ),
                    // ),
      
                    // Contact Details
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        validator: (input){
                          if(input!.isEmpty){
                            return 'Enter Contact Number';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Phone Number'),
                          prefixIcon: Icon(Icons.person),
                        ),
                        onChanged: (String inputValue){},
                      ),
                    ),
      
                    // Submit button
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        onPressed: (){},
                        child: const Text('Register',style: TextStyle(fontSize: 20.0),),
                      )
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}