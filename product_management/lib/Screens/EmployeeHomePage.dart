import 'package:flutter/material.dart';
import 'package:product_management/DrawerScreens/RegisterEmployee.dart';
import 'package:product_management/DrawerScreens/RegisterVendor.dart';

class EmployeeHomePage extends StatefulWidget {
  const EmployeeHomePage({super.key});

  @override
  State<EmployeeHomePage> createState() => _EmployeeHomePageState();
}

class _EmployeeHomePageState extends State<EmployeeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DilDosti',style: TextStyle(fontStyle: FontStyle.italic),),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('User Name'), 
              accountEmail: Text('User Email'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text('G',style: TextStyle(color: Colors.white,fontSize: 30.0),),
              ),
            ),

            ListTile(
              title: const Text('Register Vendor', style: TextStyle(fontSize: 18.0),),
              trailing: const Icon(Icons.add_home_work_sharp),
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context){
                return const RegisterVendor();
              })),
            ),

            ListTile(
              title: const Text('Register Employee', style: TextStyle(fontSize: 18.0),),
              trailing: const Icon(Icons.person),
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context){
                return const RegisterEmployee();
              })),
            ),

            ListTile(
              title: const Text('List Vendors', style: TextStyle(fontSize: 18.0),),
              trailing: const Icon(Icons.shopping_cart),
              onTap: (){},
            ),
            ListTile(
              title: const Text('List Employees', style: TextStyle(fontSize: 18.0),),
              trailing: const Icon(Icons.person_search_rounded),
              onTap: (){},
            ),

            ListTile(
              title: const Text('Add Product', style: TextStyle(fontSize: 18.0),),
              trailing: const Icon(Icons.add_a_photo_outlined),
              onTap: (){},
            ),
          ],
        ),
      ),

      // Complete Body Part
      body: Center(
        child: Column(
          children: [

            // For searching the shop by using the Id.
            Form(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 5.0),
                      child: TextFormField(
                        validator: (input){
                          if(input!.isEmpty){
                            return 'Enter the Shop Id';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Enter the Shop Id'),
                        ),
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: (){}, 
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Padding(padding: EdgeInsets.only(top: 10.0,bottom: 10.0) ,child: Text('Search',style: TextStyle(color: Colors.white,fontSize: 15.0),))
                    ),
                  )
                ],
              ),
            ),

            // Showing the products for the different shops.
            Expanded(
              child:GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 0.0,
                  ), 
                  itemCount: 4,
                  itemBuilder: (context,index) => Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.0),
                      borderRadius: BorderRadius.circular(7.0)
                    ), 
                    
                    child: SizedBox(
                      width: 100.0,
                      height: 100.0,
                      child: IconButton(
                        onPressed: (){}, 
                        icon: const Image(image: AssetImage('images/gift_shop_img.png'))
                      )
                    ),
                  )
                ),
              )
          ],
        ),
      ),
    );
  }
}