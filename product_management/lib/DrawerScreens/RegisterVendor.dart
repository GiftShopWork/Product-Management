import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterVendor extends StatefulWidget {
  const RegisterVendor({super.key});

  @override
  State<RegisterVendor> createState() => _RegisterVendorState();
}

class _RegisterVendorState extends State<RegisterVendor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registor Vendor'),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
                Column(
                  children: [
      
                    // Vendor Name
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (input){
                          if(input!.isEmpty){
                            return 'Enter vendor name';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Enter Vendor Name'),
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
                            return 'Enter Shop Name';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Enter Shop Name'),
                          prefixIcon: Icon(Icons.person),
                        ),
                        onChanged: (String inputValue){},
                      ),
                    ),
      
                    // Shop Id
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        validator: (input){
                          if(input!.isEmpty){
                            return 'Enter Vendor Id';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Enter Vendor Id'),
                          prefixIcon: Icon(Icons.person),
                        ),
                        onChanged: (String inputValue){},
                      ),
                    ),
      
                    // Shop Address
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        minLines: 4,
                        maxLines: 5,
                        validator: (input){
                          if(input!.isEmpty){
                            return 'Enter Shop Address';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Enter Shop Address'),
                          prefixIcon: Icon(Icons.home),
                        ),
                        onChanged: (String inputValue){},
                      ),
                    ),
      
      
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
      
                    // Alternative contact Details
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
                          label: Text('Alternative Number'),
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