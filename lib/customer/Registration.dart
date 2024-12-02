// import 'dart:io';

// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:project/customer/customerfunction/registrationfunction.dart';

// class Registration extends StatelessWidget {
//   Registration({super.key});
 
//   TextEditingController NameController = TextEditingController();
//   TextEditingController AgeController = TextEditingController();
//   TextEditingController GenderController = TextEditingController();
//   TextEditingController MailController = TextEditingController();
//   // TextEditingController IdproofController = TextEditingController();
//   TextEditingController AddressController = TextEditingController();
//   TextEditingController LandmarkController = TextEditingController();
//   TextEditingController PinController = TextEditingController();
//   TextEditingController DistrictController = TextEditingController();
//   TextEditingController PasswordController = TextEditingController();
//    TextEditingController phonecontroller = TextEditingController();
// FilePickerResult? pickedFile;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width:double.infinity,
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('assets/images/image.jpg'),
//                 fit: BoxFit.fill)),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Center(
//                     child: Text(
//                   "REGISTRATION",
//                   style: TextStyle(color: Colors.white),
//                 )),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(hintStyle: TextStyle(color: Colors.white),
//                 labelText: 'Name',labelStyle: TextStyle(color: Colors.white),
//                 border: OutlineInputBorder()),
//                   controller: NameController,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(hintStyle: TextStyle(color: Colors.white),
//                 labelText: 'Age',labelStyle: TextStyle(color: Colors.white),
//                 border: OutlineInputBorder()),
//                   controller: AgeController,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(style: TextStyle(color: Colors.white),
//                    decoration: InputDecoration(
//                 labelText: 'Gender',labelStyle: TextStyle(color: Colors.white),
//                 border: OutlineInputBorder()),
//                   controller: GenderController,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(
//                 labelText: 'Mail',labelStyle: TextStyle(color: Colors.white),
//                 border: OutlineInputBorder()),
//                   controller: MailController,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(
//                 labelText: 'phone',labelStyle: TextStyle(color: Colors.white),
//                 border: OutlineInputBorder()),
//                   controller: phonecontroller,
//                 )
//                 ,
//                 SizedBox(height: 10,),
//                 Container(decoration: BoxDecoration(color: Colors.white),
//                   height: 44,
//                   width: double.infinity,
//                   child: TextButton(onPressed: () async{
//                     // pick single file
//                     pickedFile = await FilePicker.platform.pickFiles(
                      
//                       );
                    
//                   }, child: Text("ID Proof")),
//                 ),
                
//                     // style: TextStyle(color: Colors.white),
                 
//                 SizedBox(height: 10),
//                 TextFormField(style: TextStyle(color: Colors.white),
//                    decoration: InputDecoration(
//                 labelText: 'Address',labelStyle: TextStyle(color: Colors.white),
//                 border: OutlineInputBorder()),
//                   controller: AddressController,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(style: TextStyle(color: Colors.white),
//                    decoration: InputDecoration(
//                 labelText: 'Land Mark',labelStyle: TextStyle(color: Colors.white),
//                 border: OutlineInputBorder()),
//                   controller: LandmarkController,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(style: TextStyle(color: Colors.white),
//                    decoration: InputDecoration(
//                 labelText: 'Pin',labelStyle: TextStyle(color: Colors.white),
//                 border: OutlineInputBorder()),
//                   controller: PinController,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(style: TextStyle(color: Colors.white),
//                    decoration: InputDecoration(
//                 labelText: 'District',labelStyle: TextStyle(color: Colors.white),
//                 border: OutlineInputBorder()),
//                   controller: DistrictController,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
                
//                 TextFormField(style: TextStyle(color: Colors.white),
//                    decoration: InputDecoration(
//                 labelText: 'Password',labelStyle: TextStyle(color: Colors.white),
//                 border: OutlineInputBorder()),
//                   controller: PasswordController,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 ElevatedButton(
//                   style:
//                       ElevatedButton.styleFrom(backgroundColor: Colors.green),
//                   onPressed: () async{
//                     if(pickedFile!=null){
//                           final storageref=FirebaseStorage.instance
//                           .ref()
//                           .child('employee_images')
//                           .child('${pickedFile!.files.first.name}.jpg');
//                           await storageref.putFile(File(pickedFile!.files.single.path!));
//                           final image_url=await storageref.getDownloadURL();
//                     Map<String,dynamic> data={
//                 'name':NameController.text,
//                 'age':AgeController.text,
//                 'password':PasswordController.text,
//                 'address':AddressController.text,
//                 'email':MailController.text,
//                 'landmark':LandmarkController.text,
//                 'gender':GenderController.text,
//                 'idproof':image_url,
//                 'pin':PinController.text,
//                 'phone':phonecontroller.text,
//                 'district':DistrictController.text
                

//               };
//               Custreg(data, MailController.text, PasswordController.text);
//                     Navigator.pushNamed(context, "custlogin");
//                   };
//                   },
//                   child: Text(
//                     "SUBMIT",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
 
 import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'package:project/customer/customerfunction/registrationfunction.dart';

class Registration extends StatelessWidget {
  Registration({super.key});

  TextEditingController NameController = TextEditingController();
  TextEditingController AgeController = TextEditingController();
  TextEditingController GenderController = TextEditingController();
  TextEditingController MailController = TextEditingController();
  TextEditingController AddressController = TextEditingController();
  TextEditingController LandmarkController = TextEditingController();
  TextEditingController PinController = TextEditingController();
  TextEditingController DistrictController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  FilePickerResult? pickedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFE6B566), // Gold color
              Color(0xFFD6D6D6), // Soft grey color
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                const Center(
                  child: Text(
                    "REGISTRATION",
                    style: TextStyle(
                      color:Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      fontFamily: 'Cursive',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                _buildTextFormField("Name", Icons.person, NameController),
                const SizedBox(height: 10),
                _buildTextFormField("Age", Icons.cake, AgeController),
                const SizedBox(height: 10),
                _buildTextFormField("Gender", Icons.wc, GenderController),
                const SizedBox(height: 10),
                _buildTextFormField("Email", Icons.mail, MailController),
                const SizedBox(height: 10),
                _buildTextFormField("Phone", Icons.phone, phonecontroller),
                const SizedBox(height: 10),
                _buildIdProofButton(),
                const SizedBox(height: 10),
                _buildTextFormField("Address", Icons.home, AddressController),
                const SizedBox(height: 10),
                _buildTextFormField("Landmark", Icons.location_on, LandmarkController),
                const SizedBox(height: 10),
                _buildTextFormField("Pin", Icons.pin_drop, PinController),
                const SizedBox(height: 10),
                _buildTextFormField("District", Icons.public, DistrictController),
                const SizedBox(height: 10),
                _buildTextFormField("Password", Icons.lock, PasswordController, obscureText: true),
                const SizedBox(height: 20),
                _buildSubmitButton(context),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField(String label, IconData icon, TextEditingController controller, {bool obscureText = false}) {
    return TextFormField(
      style: const TextStyle(color: Color(0xFFE6B566)),
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: const Color(0xFFE6B566)),
        labelText: label,
        labelStyle: const TextStyle(color: Color(0xFFE6B566)),
        filled: true,
        fillColor: const Color(0xFFD6D6D6), // Soft grey background
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFE6B566), width: 2),
        ),
      ),
      controller: controller,
    );
  }

  Widget _buildIdProofButton() {
    return Container(
      height: 44,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFE6B566), // Gold button color
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextButton(
        onPressed: () async {
          pickedFile = await FilePicker.platform.pickFiles();
        },
        child: const Text(
          "Upload ID Proof",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFE6B566), // Gold submit button color
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () async {
        if (pickedFile != null) {
          final storageref = FirebaseStorage.instance
              .ref()
              .child('employee_images')
              .child('${pickedFile!.files.first.name}.jpg');
          await storageref.putFile(File(pickedFile!.files.single.path!));
          final imageUrl = await storageref.getDownloadURL();
          Map<String, dynamic> data = {
            'name': NameController.text,
            'age': AgeController.text,
            'password': PasswordController.text,
            'address': AddressController.text,
            'email': MailController.text,
            'landmark': LandmarkController.text,
            'gender': GenderController.text,
            'idproof': imageUrl,
            'pin': PinController.text,
            'phone': phonecontroller.text,
            'district': DistrictController.text,
          };
          Custreg(data, MailController.text, PasswordController.text);
          Navigator.pushNamed(context, "custlogin");
        }
      },
      child: const Text(
        "SUBMIT",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

//  import 'dart:io';
// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';

// import 'package:project/customer/customerfunction/registrationfunction.dart';
// import 'package:project/customer/mainhome.dart';

// class Registration extends StatelessWidget {
//   Registration({super.key});

//   TextEditingController NameController = TextEditingController();
//   TextEditingController AgeController = TextEditingController();
//   TextEditingController GenderController = TextEditingController();
//   TextEditingController MailController = TextEditingController();
//   TextEditingController AddressController = TextEditingController();
//   TextEditingController LandmarkController = TextEditingController();
//   TextEditingController PinController = TextEditingController();
//   TextEditingController DistrictController = TextEditingController();
//   TextEditingController PasswordController = TextEditingController();
//   TextEditingController phonecontroller = TextEditingController();
//   FilePickerResult? pickedFile;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Colors.amber.shade200, // Light, warm amber
//               Colors.deepOrangeAccent.shade100, // Light orange accent
//             ],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(height: 50),
//                 Center(
//                   child: Text(
//                     "REGISTRATION",
//                     style: TextStyle(
//                       color: Colors.deepOrange[800],
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       letterSpacing: 1.2,
//                       fontFamily: 'Cursive',
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 _buildTextFormField("Name", Icons.person, NameController),
//                 SizedBox(height: 10),
//                 _buildTextFormField("Age", Icons.cake, AgeController),
//                 SizedBox(height: 10),
//                 _buildTextFormField("Gender", Icons.wc, GenderController),
//                 SizedBox(height: 10),
//                 _buildTextFormField("Email", Icons.mail, MailController),
//                 SizedBox(height: 10),
//                 _buildTextFormField("Phone", Icons.phone, phonecontroller),
//                 SizedBox(height: 10),
//                 _buildIdProofButton(),
//                 SizedBox(height: 10),
//                 _buildTextFormField("Address", Icons.home, AddressController),
//                 SizedBox(height: 10),
//                 _buildTextFormField("Landmark", Icons.location_on, LandmarkController),
//                 SizedBox(height: 10),
//                 _buildTextFormField("Pin", Icons.pin_drop, PinController),
//                 SizedBox(height: 10),
//                 _buildTextFormField("District", Icons.public, DistrictController),
//                 SizedBox(height: 10),
//                 _buildTextFormField("Password", Icons.lock, PasswordController, obscureText: true),
//                 SizedBox(height: 20),
//                 _buildSubmitButton(context),
//                 SizedBox(height: 30),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextFormField(String label, IconData icon, TextEditingController controller, {bool obscureText = false}) {
//     return TextFormField(
//       style: TextStyle(color: Colors.deepOrange[800]),
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         prefixIcon: Icon(icon, color: Colors.deepOrangeAccent),
//         labelText: label,
//         labelStyle: TextStyle(color: Colors.deepOrange[700]),
//         filled: true,
//         fillColor: Colors.amber.shade50,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: BorderSide(color: Colors.amber.shade400, width: 2),
//         ),
//       ),
//       controller: controller,
//     );
//   }

//   Widget _buildIdProofButton() {
//     return Container(
//       height: 44,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: Colors.amber[300],
//         borderRadius: BorderRadius.circular(8),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black26,
//             blurRadius: 4,
//             offset: Offset(0, 4),
//           ),
//         ],
//       ),
//       child: TextButton(
//         onPressed: () async {
//           pickedFile = await FilePicker.platform.pickFiles();
//         },
//         child: Text(
//           "Upload ID Proof",
//           style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }

//   Widget _buildSubmitButton(BuildContext context) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.orange[300],
//         padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//       ),
//       onPressed: () async {
//         if (pickedFile != null) {
//           final storageref = FirebaseStorage.instance
//               .ref()
//               .child('employee_images')
//               .child('${pickedFile!.files.first.name}.jpg');
//           await storageref.putFile(File(pickedFile!.files.single.path!));
//           final imageUrl = await storageref.getDownloadURL();
//           Map<String, dynamic> data = {
//             'name': NameController.text,
//             'age': AgeController.text,
//             'password': PasswordController.text,
//             'address': AddressController.text,
//             'email': MailController.text,
//             'landmark': LandmarkController.text,
//             'gender': GenderController.text,
//             'idproof': imageUrl,
//             'pin': PinController.text,
//             'phone': phonecontroller.text,
//             'district': DistrictController.text,
//           };
//           Custreg(data, MailController.text, PasswordController.text);
//           Navigator.pushNamed(context, "custlogin");
//         }
//       },
//       child: Text(
//         "SUBMIT",
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 16,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
// }
