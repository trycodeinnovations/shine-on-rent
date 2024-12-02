// import 'dart:io';

// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/addjewefunction.dart';
// import 'package:project/admin/adminfunction/addminviewjeweget.dart';

// class Jewellary extends StatelessWidget {
//   Jewellary({super.key});
//   TextEditingController jewellarynameController = TextEditingController();
//   TextEditingController quantityController = TextEditingController();
//   TextEditingController functionnameController = TextEditingController();
//   TextEditingController actualpriceController = TextEditingController();
//   TextEditingController cautiondepositController = TextEditingController();
//   TextEditingController rentpriceController = TextEditingController();
//   TextEditingController availablecontroller = TextEditingController();
//   FilePickerResult? pickedFile;
//   String? selectedCategory;
//   final List<String> categories = ['Engagement', 'Haldi', 'Wedding'];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//         child: Container(
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage('assets/images/jjjjj.jpg'), fit: BoxFit.fill)),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Text(
//                   "ADD JEWELLARY ITEMS",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 SizedBox(
//                   height: 18,
//                 ),
                
//                 TextFormField(
//                   style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(
//                       hintStyle: TextStyle(color: Colors.white),
//                       labelText: 'Jewelary Name',
//                       labelStyle: TextStyle(color: Colors.white),
//                       border: OutlineInputBorder()),
//                   controller: jewellarynameController,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(decoration: BoxDecoration(color: Colors.white),
//                   height: 44,
//                   width: double.infinity,
//                   child: TextButton(onPressed: () async{
//                     // pick single file
//                     pickedFile = await FilePicker.platform.pickFiles(
                      
//                       );
                    
//                   }, child: Text("Select Image")),
//                 ),SizedBox(height: 10,),
//                 TextFormField(
//                   style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(
//                       hintStyle: TextStyle(color: Colors.white),
//                       labelText: 'Quantity',
//                       labelStyle: TextStyle(color: Colors.white),
//                       border: OutlineInputBorder()),
//                   controller: quantityController,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
//                   style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(
//                       hintStyle: TextStyle(color: Colors.white),
//                       labelText: 'Available',
//                       labelStyle: TextStyle(color: Colors.white),
//                       border: OutlineInputBorder()),
//                   controller: availablecontroller,
//                 ),
//                 SizedBox(
//                   height: 18,
//                 ),
//                 DropdownButtonFormField<String>(
//                   value: selectedCategory,
//                   hint: Text(
//                     'Select Category',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   dropdownColor: Colors.black,
//                   decoration: InputDecoration(
//                     labelText: 'Category',
//                     labelStyle: TextStyle(color: Colors.white),
//                     border: OutlineInputBorder(),
//                   ),
//                   items: categories.map((String category) {
//                     return DropdownMenuItem<String>(
//                       value: category,
//                       child: Text(category, style: TextStyle(color: const Color.fromARGB(255, 250, 249, 249))),
//                     );
//                   }).toList(),
//                   onChanged: (value) {
//                      selectedCategory=value;
//                     print(value);
//                     print(selectedCategory);
                   
//                   },
//                 ),
                
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
//                   style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(
//                       hintStyle: TextStyle(color: Colors.white),
//                       labelText: 'Actual Price',
//                       labelStyle: TextStyle(color: Colors.white),
//                       border: OutlineInputBorder()),
//                   controller: actualpriceController,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
//                   style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(
//                       hintStyle: TextStyle(color: Colors.white),
//                       labelText: 'Caution Deposit',
//                       labelStyle: TextStyle(color: Colors.white),
//                       border: OutlineInputBorder()),
//                   controller: cautiondepositController,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   "AVAILABLE FOR 1O DAYS",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
//                   style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(
//                       hintStyle: TextStyle(color: Colors.white),
//                       labelText: 'Rent Price',
//                       labelStyle: TextStyle(color: Colors.white),
//                       border: OutlineInputBorder()),
//                   controller: rentpriceController,
//                 ),
//                 SizedBox(
//                   height: 18,
//                 ),
//                 ElevatedButton(
//                     onPressed: () async{
//                        if(pickedFile!=null){
//                           final storageref=FirebaseStorage.instance
//                           .ref()
//                           .child('employee_images')
//                           .child('${pickedFile!.files.first.name}.jpg');
//                           await storageref.putFile(File(pickedFile!.files.single.path!));
//                           final image_url=await storageref.getDownloadURL();
//                       Map<String,dynamic> data={
//                   'jewename':jewellarynameController.text,
//                   'quantity':quantityController.text,
//                   'category': selectedCategory,
//                   'actualprice':actualpriceController.text,
//                   'cautiondeposit':cautiondepositController.text,
//                   'rentprice':rentpriceController.text,
//                   'available':availablecontroller.text,
//                   'select image':image_url,
                  
                  
        
//                 };
//                 Addjewe(data, jewellarynameController.text,quantityController.text,);
//                       Navigator.pushNamed(context, "adminhome");
//                     }},
//                     child: Text("SUBMIT")),
//                 SizedBox(
//                   height: 18,
//                 ),
//                 TextButton(
//                     onPressed: () {
//                       adminvjeweget(categories);
//                       Navigator.pushNamed(
//                           context, "adminviewaddedjewellaryitems");
//                     },
//                     child: Text("View Added Jewellary Items",
//                         style: TextStyle(color: Colors.white)))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'dart:io';

// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/addjewefunction.dart';
// import 'package:project/admin/adminfunction/addminviewjeweget.dart';

// class Jewellary extends StatelessWidget {
//   Jewellary({super.key});
//   TextEditingController jewellarynameController = TextEditingController();
//   TextEditingController quantityController = TextEditingController();
//   TextEditingController functionnameController = TextEditingController();
//   TextEditingController actualpriceController = TextEditingController();
//   TextEditingController cautiondepositController = TextEditingController();
//   TextEditingController rentpriceController = TextEditingController();
//   TextEditingController availablecontroller = TextEditingController();
//   FilePickerResult? pickedFile;
//   String? selectedCategory;
//   final List<String> categories = ['Engagement', 'Haldi', 'Wedding'];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
        
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           // decoration: BoxDecoration(
//           //   gradient: LinearGradient(
//           //     colors: [Colors.blue[200]!, Colors.blue[50]!],
//           //     begin: Alignment.topCenter,
//           //     end: Alignment.bottomCenter,
//           //   ),
//           // ),
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               Text(
//                 "ADD JEWELRY ITEMS",
//                 style: TextStyle(
//                   color: Colors.blue[900],
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 20),
//               _buildTextField("Jewelry Name", jewellarynameController),
//               SizedBox(height: 12),
//               Container(
//                 height: 50,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 90, 91, 165),
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: TextButton(
//                   onPressed: () async {
//                     pickedFile = await FilePicker.platform.pickFiles();
//                   },
//                   child: Text(
//                     "Select Image",
//                     style: TextStyle(color: Colors.white, fontSize: 16),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 12),
//               _buildTextField("Quantity", quantityController),
//               SizedBox(height: 12),
//               _buildTextField("Available", availablecontroller),
//               SizedBox(height: 12),
//               _buildDropdown(),
//               SizedBox(height: 12),
//               _buildTextField("Actual Price", actualpriceController),
//               SizedBox(height: 12),
//               _buildTextField("Caution Deposit", cautiondepositController),
//               SizedBox(height: 12),
//               Text(
//                 "AVAILABLE FOR 10 DAYS",
//                 style: TextStyle(color: Colors.blue[900], fontSize: 16),
//               ),
//               SizedBox(height: 12),
//               _buildTextField("Rent Price", rentpriceController),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () async {
//                   if (pickedFile != null) {
//                     final storageref = FirebaseStorage.instance
//                         .ref()
//                         .child('jewelry_images')
//                         .child('${pickedFile!.files.first.name}.jpg');
//                     await storageref.putFile(File(pickedFile!.files.single.path!));
//                     final image_url = await storageref.getDownloadURL();

//                     Map<String, dynamic> data = {
//                       'jewename': jewellarynameController.text,
//                       'quantity': quantityController.text,
//                       'category': selectedCategory,
//                       'actualprice': actualpriceController.text,
//                       'cautiondeposit': cautiondepositController.text,
//                       'rentprice': rentpriceController.text,
//                       'available': availablecontroller.text,
//                       'select image': image_url,
//                     };

//                     Addjewe(data, jewellarynameController.text, quantityController.text);
//                     Navigator.pushNamed(context, "adminhome");
//                   }
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color.fromARGB(255, 90, 91, 165),
//                   padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 child: Text("SUBMIT", style: TextStyle(fontSize: 18, color: Colors.white)),
//               ),
//               SizedBox(height: 18),
//               TextButton(
//                 onPressed: () async{
//                  await adminvjeweget(categories);
//                   Navigator.pushNamed(context, "adminviewaddedjewellaryitems");
//                 },
//                 child: Text(
//                   "View Added Jewelry Items",
//                   style: TextStyle(color: Colors.blue[900]),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Method to create text fields with consistent styling
//   Widget _buildTextField(String label, TextEditingController controller) {
//     return TextFormField(
//       style: TextStyle(color: Colors.blue[900]),
//       controller: controller,
//       decoration: InputDecoration(
//         labelText: label,
//         labelStyle: TextStyle(color: Colors.blue[900]),
//         filled: true,
//         fillColor: Colors.blue[50],
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: BorderSide(color: Colors.blue[200]!),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: BorderSide(color: Colors.blue[900]!),
//         ),
//       ),
//     );
//   }

//   // Dropdown button field with custom styling
//   Widget _buildDropdown() {
//     return DropdownButtonFormField<String>(
//       value: selectedCategory,
//       hint: Text(
//         'Select Category',
//         style: TextStyle(color: Colors.blue[900]),
//       ),
//       dropdownColor: Colors.blue[100],
//       decoration: InputDecoration(
//         labelText: 'Category',
//         labelStyle: TextStyle(color: Colors.blue[900]),
//         filled: true,
//         fillColor: Colors.blue[50],
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: BorderSide(color: Colors.blue[200]!),
//         ),
//       ),
//       items: categories.map((String category) {
//         return DropdownMenuItem<String>(
//           value: category,
//           child: Text(
//             category,
//             style: TextStyle(color: Colors.blue[900]),
//           ),
//         );
//       }).toList(),
//       onChanged: (value) {
//         selectedCategory = value!;
//       },
//     );
//   }
// }


// import 'dart:io';

// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/addjewefunction.dart';
// import 'package:project/admin/adminfunction/addminviewjeweget.dart';

// class Jewellary extends StatelessWidget {
//   Jewellary({super.key});
//   TextEditingController jewellarynameController = TextEditingController();
//   TextEditingController quantityController = TextEditingController();
//   TextEditingController functionnameController = TextEditingController();
//   TextEditingController actualpriceController = TextEditingController();
//   TextEditingController cautiondepositController = TextEditingController();
//   TextEditingController rentpriceController = TextEditingController();
//   TextEditingController availablecontroller = TextEditingController();
//   FilePickerResult? pickedFile;
//   String? selectedCategory;
//   final List<String> categories = ['Engagement', 'Haldi', 'Wedding'];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue[800],
//         title: Text(
//           "Add Jewelry Item",
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.blue[50]!, Colors.blue[200]!],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//             ),
//           ),
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 "ADD JEWELRY ITEMS",
//                 style: TextStyle(
//                   color: Colors.blue[900],
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 1.5,
//                 ),
//               ),
//               SizedBox(height: 20),
//               _buildTextField("Jewelry Name", jewellarynameController),
//               SizedBox(height: 12),
              
//               // Select Image Button
//               Container(
//                 height: 50,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.blue[700],
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: TextButton.icon(
//                   icon: Icon(Icons.image, color: Colors.white),
//                   label: Text(
//                     "Select Image",
//                     style: TextStyle(color: Colors.white, fontSize: 16),
//                   ),
//                   onPressed: () async {
//                     pickedFile = await FilePicker.platform.pickFiles();
//                   },
//                 ),
//               ),
              
//               SizedBox(height: 12),
//               _buildTextField("Quantity", quantityController),
//               SizedBox(height: 12),
//               _buildTextField("Available", availablecontroller),
//               SizedBox(height: 12),
//               _buildDropdown(),
//               SizedBox(height: 12),
//               _buildTextField("Actual Price", actualpriceController),
//               SizedBox(height: 12),
//               _buildTextField("Caution Deposit", cautiondepositController),
//               SizedBox(height: 12),
//               Text(
//                 "AVAILABLE FOR 10 DAYS",
//                 style: TextStyle(color: Colors.blue[800], fontSize: 16, fontWeight: FontWeight.w500),
//               ),
//               SizedBox(height: 12),
//               _buildTextField("Rent Price", rentpriceController),
//               SizedBox(height: 20),
              
//               // Submit Button
//               ElevatedButton(
//                 onPressed: () async {
//                   if (pickedFile != null) {
//                     final storageref = FirebaseStorage.instance
//                         .ref()
//                         .child('jewelry_images')
//                         .child('${pickedFile!.files.first.name}.jpg');
//                     await storageref.putFile(File(pickedFile!.files.single.path!));
//                     final image_url = await storageref.getDownloadURL();

//                     Map<String, dynamic> data = {
//                       'jewename': jewellarynameController.text,
//                       'quantity': quantityController.text,
//                       'category': selectedCategory,
//                       'actualprice': actualpriceController.text,
//                       'cautiondeposit': cautiondepositController.text,
//                       'rentprice': rentpriceController.text,
//                       'available': availablecontroller.text,
//                       'select image': image_url,
//                     };

//                     Addjewe(data, jewellarynameController.text, quantityController.text);
//                     Navigator.pushNamed(context, "adminhome");
//                   }
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue[800],
//                   padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 child: Text("SUBMIT", style: TextStyle(fontSize: 18, color: Colors.white)),
//               ),
              
//               SizedBox(height: 18),
              
//               // View Added Jewelry Items Button
//               TextButton(
//                 onPressed: () async {
//                   await adminvjeweget(categories);
//                   Navigator.pushNamed(context, "adminviewaddedjewellaryitems");
//                 },
//                 child: Text(
//                   "View Added Jewelry Items",
//                   style: TextStyle(color: Colors.blue[900], fontSize: 16, fontWeight: FontWeight.w600),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Method to create text fields with consistent styling
//   Widget _buildTextField(String label, TextEditingController controller) {
//     return TextFormField(
//       style: TextStyle(color: Colors.blue[900]),
//       controller: controller,
//       decoration: InputDecoration(
//         labelText: label,
//         labelStyle: TextStyle(color: Colors.blue[900]),
//         filled: true,
//         fillColor: Colors.blue[50],
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: BorderSide(color: Colors.blue[200]!),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: BorderSide(color: Colors.blue[900]!),
//         ),
//       ),
//     );
//   }

//   // Dropdown button field with custom styling
//   Widget _buildDropdown() {
//     return DropdownButtonFormField<String>(
//       value: selectedCategory,
//       hint: Text(
//         'Select Category',
//         style: TextStyle(color: Colors.blue[900]),
//       ),
//       dropdownColor: Colors.blue[50],
//       decoration: InputDecoration(
//         labelText: 'Category',
//         labelStyle: TextStyle(color: Colors.blue[900]),
//         filled: true,
//         fillColor: Colors.blue[50],
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: BorderSide(color: Colors.blue[200]!),
//         ),
//       ),
//       items: categories.map((String category) {
//         return DropdownMenuItem<String>(
//           value: category,
//           child: Text(
//             category,
//             style: TextStyle(color: Colors.blue[900]),
//           ),
//         );
//       }).toList(),
//       onChanged: (value) {
//         selectedCategory = value!;
//       },
//     );
//   }
// }



import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:project/admin/adminfunction/addjewefunction.dart';
import 'package:project/admin/adminfunction/addminviewjeweget.dart';

class Jewellary extends StatelessWidget {
  Jewellary({super.key});
  TextEditingController jewellarynameController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController functionnameController = TextEditingController();
  TextEditingController actualpriceController = TextEditingController();
  TextEditingController cautiondepositController = TextEditingController();
  TextEditingController rentpriceController = TextEditingController();
  TextEditingController availablecontroller = TextEditingController();
  FilePickerResult? pickedFile;
  String? selectedCategory;
  final List<String> categories = ['Engagement', 'Haldi', 'Wedding'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE6B566), // Soft gold for AppBar
        title: const Text(
          "Add Jewelry Item",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFE6B566), Color(0xFFD6D6D6)], // Gradient from soft gold to light grey
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
              
              _buildTextField("Jewelry Name", jewellarynameController),
              const SizedBox(height: 12),
              
              // Select Image Button
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFE6B566), // Soft gold color for the button
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: TextButton.icon(
                  icon: const Icon(Icons.image, color: Colors.white),
                  label: const Text(
                    "Select Image",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () async {
                    pickedFile = await FilePicker.platform.pickFiles();
                  },
                ),
              ),
              
              const SizedBox(height: 12),
              _buildTextField("Quantity", quantityController),
              const SizedBox(height: 12),
              _buildTextField("Available", availablecontroller),
              const SizedBox(height: 12),
              _buildDropdown(),
              const SizedBox(height: 12),
              _buildTextField("Actual Price", actualpriceController),
              const SizedBox(height: 12),
              _buildTextField("Caution Deposit", cautiondepositController),
              const SizedBox(height: 12),
              const Text(
                "AVAILABLE FOR 10 DAYS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12),
              _buildTextField("Rent Price", rentpriceController),
              const SizedBox(height: 20),
              
              // Submit Button
              ElevatedButton(
                onPressed: () async {
                  if (pickedFile != null) {
                    final storageref = FirebaseStorage.instance
                        .ref()
                        .child('jewelry_images')
                        .child('${pickedFile!.files.first.name}.jpg');
                    await storageref.putFile(File(pickedFile!.files.single.path!));
                    final imageUrl = await storageref.getDownloadURL();

                    Map<String, dynamic> data = {
                      'jewename': jewellarynameController.text,
                      'quantity': quantityController.text,
                      'category': selectedCategory,
                      'actualprice': actualpriceController.text,
                      'cautiondeposit': cautiondepositController.text,
                      'rentprice': rentpriceController.text,
                      'available': availablecontroller.text,
                      'select image': imageUrl,
                    };

                    Addjewe(data, jewellarynameController.text, quantityController.text);
                    Navigator.pushNamed(context, "adminhome");
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE6B566),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text("SUBMIT", style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
              
              const SizedBox(height: 18),
              
              // View Added Jewelry Items Button
              TextButton(
                onPressed: () async {
                  await adminvjeweget(categories);
                  Navigator.pushNamed(context, "adminviewaddedjewellaryitems");
                },
                child: const Text(
                  "View Added Jewelry Items",
                  style: TextStyle(
                    color: Color(0xFFE6B566),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to create text fields with consistent styling
  Widget _buildTextField(String label, TextEditingController controller) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Color(0xFFE6B566)),
        filled: true,
        fillColor: const Color(0xFFD6D6D6),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFE6B566)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFE6B566)),
        ),
        prefixIcon: const Icon(Icons.description, color: Colors.white),
      ),
    );
  }

  // Dropdown button field with custom styling
  Widget _buildDropdown() {
    return DropdownButtonFormField<String>(
      value: selectedCategory,
      hint: const Text(
        'Select Category',
        style: TextStyle(color: Color(0xFFE6B566)),
      ),
      dropdownColor: const Color(0xFFD6D6D6),
      decoration: InputDecoration(
        labelText: 'Category',
        labelStyle: const TextStyle(color: Color(0xFFE6B566)),
        filled: true,
        fillColor: const Color(0xFFD6D6D6),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFE6B566)),
        ),
        prefixIcon: const Icon(Icons.category, color: Color(0xFFE6B566)),
      ),
      items: categories.map((String category) {
        return DropdownMenuItem<String>(
          value: category,
          child: Text(
            category,
            style: const TextStyle(color: Color(0xFFE6B566)),
          ),
        );
      }).toList(),
      onChanged: (value) {
        selectedCategory = value!;
      },
    );
  }
}
