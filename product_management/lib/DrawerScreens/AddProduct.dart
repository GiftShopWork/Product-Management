import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';
class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {

  List<File>? _selectedImages;
  
  @override
  void initState() {
    super.initState();
    _selectedImages = [];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // Product Name
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (input){
                    if(input!.isEmpty){
                      return 'Enter Product Name';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Product Name'),
                    prefixIcon: Icon(Icons.shopping_bag),
                  ),
                  onChanged: (String inputValue){},
                ),
              ),

              // Product Id
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (input){
                    if(input!.isEmpty){
                      return 'Enter Product Id';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Product Id'),
                    prefixIcon: Icon(Icons.shopping_bag),
                  ),
                  onChanged: (String inputValue){},
                ),
              ),

              // Shop Id
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (input){
                    if(input!.isEmpty){
                      return 'Enter Shop Id';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Shop Id'),
                    prefixIcon: Icon(Icons.shopping_bag),
                  ),
                  onChanged: (String inputValue){},
                ),
              ),

              // Price
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (input){
                    if(input!.isEmpty){
                      return 'Enter Product Price';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Product Price'),
                    prefixIcon: Icon(Icons.shopping_bag),
                  ),
                  onChanged: (String inputValue){},
                ),
              ),

              // Total Discount
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (input){
                    if(input!.isEmpty){
                      return 'Enter Total Discount';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Total Discount'),
                    prefixIcon: Icon(Icons.shopping_bag),
                  ),
                  onChanged: (String inputValue){},
                ),
              ),

              // Select Images :
              ListTile(
                title: const Text('Select Product Images',style: TextStyle(color: Colors.white)),
                trailing: const Icon(Icons.image_outlined, color: Colors.white,),
                tileColor: Colors.blue,
                onTap: (){
                  selectImagesFromGalary();
                },
              ),

            ],
          )
        )
      )
    );
  }

  Future selectImagesFromGalary()async{
    ImagePicker imagePicker = ImagePicker();
    var images = await imagePicker.pickMultiImage(
      imageQuality: 100,
      maxHeight: 1000,
      maxWidth: 1000,
    );
    List<XFile> xfilePick = images;
    if(xfilePick.isNotEmpty){
      for(int i=0;i<xfilePick.length;i++){
        _selectedImages!.add(File(xfilePick[i].path));
      }
    }
    setState((){});
  }
}