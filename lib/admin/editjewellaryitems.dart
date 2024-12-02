



// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/addminviewjeweget.dart';
// import 'package:project/admin/adminfunction/editfunction.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';
// import 'package:project/customer/jewellaryitems.dart';

// class Editjewellaryitems extends StatelessWidget {
//   final jewename;
//   final quantity;
//   final available;
//   final Category;
//   final actualprice;
//   final rentprice;
//   final id;


//    Editjewellaryitems({
//     Key? key,
//     required this.jewename,
//     required this. quantity,
//     required this.available,
//     required this.Category,
//     required this.actualprice,
//     required this.rentprice,
//     this.id,
//   }) : super(key: key);
// TextEditingController jewellarynameController=TextEditingController();
// TextEditingController quantityController=TextEditingController();
// TextEditingController functionnameController=TextEditingController();
// TextEditingController actualpriceController=TextEditingController();
// TextEditingController availablecontroller=TextEditingController();
// TextEditingController rentpriceController=TextEditingController();
// String? selectedCategory;
//   final List<String> categories = ['Engagement', 'Haldi', 'Wedding'];
//   @override
//   Widget build(BuildContext context) {
//     jewellarynameController.text = jewename;
//     quantityController.text = quantity;
//     actualpriceController.text = actualprice;
//     availablecontroller.text = available;
//     rentpriceController.text = rentprice;
//     selectedCategory = selectedCategory ?? Category;

//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('assets/images/jjjjj.jpg'),
//                 fit: BoxFit.fill)),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Text("EDIT JEWELLARY ITEMS",style: TextStyle(color: Colors.white),),
//               SizedBox(height: 10,),
//               TextFormField(style: TextStyle(color: Colors.white),
//                     decoration: InputDecoration(hintStyle: TextStyle(color: Colors.white),
//                   labelText: 'Jewelary Name',labelStyle: TextStyle(color: Colors.white),
//                   border: OutlineInputBorder()),
//               controller: jewellarynameController,),
//               SizedBox(height: 10,),
//               TextFormField(style: TextStyle(color: Colors.white),
//                     decoration: InputDecoration(hintStyle: TextStyle(color: Colors.white),
//                   labelText: 'Quantity',labelStyle: TextStyle(color: Colors.white),
//                   border: OutlineInputBorder()),
//               controller: quantityController,),
//               SizedBox(height: 10,),
//                DropdownButtonFormField<String>(
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
              
//               SizedBox(height: 10,),
//               TextFormField(style: TextStyle(color: Colors.white),
//                     decoration: InputDecoration(hintStyle: TextStyle(color: Colors.white),
//                   labelText: 'Actual Price',labelStyle: TextStyle(color: Colors.white),
//                   border: OutlineInputBorder()),
//               controller: actualpriceController,),
//               SizedBox(height: 10,),
//               TextFormField(style: TextStyle(color: Colors.white),
//                     decoration: InputDecoration(hintStyle: TextStyle(color: Colors.white),
//                   labelText: 'Available',labelStyle: TextStyle(color: Colors.white),
//                   border: OutlineInputBorder()),
//               controller: availablecontroller,),
//               SizedBox(height: 10,),
//               Text("AVAILABLE FOR 1O DAYS",style: TextStyle(color: Colors.white),),
//               SizedBox(height: 10,),
//               TextFormField(style: TextStyle(color: Colors.white),
//                     decoration: InputDecoration(hintStyle: TextStyle(color: Colors.white),
//                   labelText: 'Rent Price',labelStyle: TextStyle(color: Colors.white),
//                   border: OutlineInputBorder()),
//               controller: rentpriceController,),
//               SizedBox(height: 10,),
//               ElevatedButton(onPressed: ()async {
                 
//                 Map<String,dynamic>data={
//                  'jewename':jewellarynameController.text,
//                  'quantity':quantityController.text,
//                  'available':availablecontroller.text,
//                  'category':selectedCategory,
//                  'rentprice':rentpriceController.text,
//                  'actualprice':actualpriceController.text
//                 };
//              await   editfun(data,id);
                
//               }, child: Text("EDIT")),
//               SizedBox(height: 10,),
              
             
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/addminviewjeweget.dart';
// import 'package:project/admin/adminfunction/editfunction.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';
// import 'package:project/customer/jewellaryitems.dart';

// class Editjewellaryitems extends StatelessWidget {
//   final jewename;
//   final quantity;
//   final available;
//   final Category;
//   final actualprice;
//   final rentprice;
//   final id;

//   Editjewellaryitems({
//     Key? key,
//     required this.jewename,
//     required this.quantity,
//     required this.available,
//     required this.Category,
//     required this.actualprice,
//     required this.rentprice,
//     this.id,
//   }) : super(key: key);

//   TextEditingController jewellarynameController = TextEditingController();
//   TextEditingController quantityController = TextEditingController();
//   TextEditingController functionnameController = TextEditingController();
//   TextEditingController actualpriceController = TextEditingController();
//   TextEditingController availablecontroller = TextEditingController();
//   TextEditingController rentpriceController = TextEditingController();
//   String? selectedCategory;
//   final List<String> categories = ['Engagement', 'Haldi', 'Wedding'];

//   @override
//   Widget build(BuildContext context) {
//     jewellarynameController.text = jewename;
//     quantityController.text = quantity;
//     actualpriceController.text = actualprice;
//     availablecontroller.text = available;
//     rentpriceController.text = rentprice;
//     selectedCategory = selectedCategory ?? Category;

//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
        
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Text(
//                 "EDIT JEWELLARY ITEMS",
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//               ),
//               SizedBox(height: 10),
//               TextFormField(
//                 style: TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                   hintStyle: TextStyle(color: Colors.white),
//                   labelText: 'Jewelry Name',
//                   labelStyle: TextStyle(color: Colors.white),
//                   border: OutlineInputBorder(),
//                 ),
//                 controller: jewellarynameController,
//               ),
//               SizedBox(height: 10),
//               TextFormField(
//                 style: TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                   hintStyle: TextStyle(color: Colors.white),
//                   labelText: 'Quantity',
//                   labelStyle: TextStyle(color: Colors.white),
//                   border: OutlineInputBorder(),
//                 ),
//                 controller: quantityController,
//               ),
//               SizedBox(height: 10),
//               DropdownButtonFormField<String>(
//                 value: selectedCategory,
//                 hint: Text(
//                   'Select Category',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 dropdownColor: Colors.black,
//                 decoration: InputDecoration(
//                   labelText: 'Category',
//                   labelStyle: TextStyle(color: Colors.white),
//                   border: OutlineInputBorder(),
//                 ),
//                 items: categories.map((String category) {
//                   return DropdownMenuItem<String>(
//                     value: category,
//                     child: Text(
//                       category,
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   );
//                 }).toList(),
//                 onChanged: (value) {
//                   selectedCategory = value;
//                 },
//               ),
//               SizedBox(height: 10),
//               TextFormField(
//                 style: TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                   hintStyle: TextStyle(color: Colors.white),
//                   labelText: 'Actual Price',
//                   labelStyle: TextStyle(color: Colors.white),
//                   border: OutlineInputBorder(),
//                 ),
//                 controller: actualpriceController,
//               ),
//               SizedBox(height: 10),
//               TextFormField(
//                 style: TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                   hintStyle: TextStyle(color: Colors.white),
//                   labelText: 'Available',
//                   labelStyle: TextStyle(color: Colors.white),
//                   border: OutlineInputBorder(),
//                 ),
//                 controller: availablecontroller,
//               ),
//               SizedBox(height: 10),
//               Text(
//                 "AVAILABLE FOR 10 DAYS",
//                 style: TextStyle(color: Colors.white),
//               ),
//               SizedBox(height: 10),
//               TextFormField(
//                 style: TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                   hintStyle: TextStyle(color: Colors.white),
//                   labelText: 'Rent Price',
//                   labelStyle: TextStyle(color: Colors.white),
//                   border: OutlineInputBorder(),
//                 ),
//                 controller: rentpriceController,
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () async {
//                   Navigator.pushNamed(context, "adminhome");
//                   Map<String, dynamic> data = {
//                     'jewename': jewellarynameController.text,
//                     'quantity': quantityController.text,
//                     'available': availablecontroller.text,
//                     'category': selectedCategory,
//                     'rentprice': rentpriceController.text,
//                     'actualprice': actualpriceController.text,
//                   };
//                   await editfun(data, id);
//                 },
//                 child: Text("EDIT"),
//               ),
//               SizedBox(height: 10),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:project/admin/adminfunction/editfunction.dart';

class Editjewellaryitems extends StatelessWidget {
  final jewename;
  final quantity;
  final available;
  final Category;
  final actualprice;
  final rentprice;
  final id;

  Editjewellaryitems({
    super.key,
    required this.jewename,
    required this.quantity,
    required this.available,
    required this.Category,
    required this.actualprice,
    required this.rentprice,
    this.id,
  });

  final TextEditingController jewellarynameController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController actualpriceController = TextEditingController();
  final TextEditingController availablecontroller = TextEditingController();
  final TextEditingController rentpriceController = TextEditingController();
  String? selectedCategory;
  final List<String> categories = ['Engagement', 'Haldi', 'Wedding'];

  @override
  Widget build(BuildContext context) {
    jewellarynameController.text = jewename;
    quantityController.text = quantity;
    actualpriceController.text = actualprice;
    availablecontroller.text = available;
    rentpriceController.text = rentprice;
    selectedCategory = selectedCategory ?? Category;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Jewelry Item", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFFE6B566),
        centerTitle: true,
      ),
      body: Container(height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE6B566), Color(0xFFD6D6D6)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "EDIT JEWELRY ITEMS",
                style: TextStyle(
                  color: Color(0xFFE6B566),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 20),
              _buildTextField("Jewelry Name", jewellarynameController, Icons.diamond),
              const SizedBox(height: 16),
              _buildTextField("Quantity", quantityController, Icons.countertops),
              const SizedBox(height: 16),
              _buildDropdown(),
              const SizedBox(height: 16),
              _buildTextField("Actual Price", actualpriceController, Icons.price_change),
              const SizedBox(height: 16),
              _buildTextField("Available", availablecontroller, Icons.check_circle),
              const SizedBox(height: 10),
              const Text(
                "AVAILABLE FOR 10 DAYS",
                style: TextStyle(color: Color(0xFFE6B566), fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              _buildTextField("Rent Price", rentpriceController, Icons.attach_money),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () async {
                  Navigator.pushNamed(context, "adminhome");
                  Map<String, dynamic> data = {
                    'jewename': jewellarynameController.text,
                    'quantity': quantityController.text,
                    'available': availablecontroller.text,
                    'category': selectedCategory,
                    'rentprice': rentpriceController.text,
                    'actualprice': actualpriceController.text,
                  };
                  await editfun(data, id);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE6B566),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: const Icon(Icons.edit, color: Colors.white),
                label: const Text("EDIT", style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Custom text field builder with icon support and consistent styling
  Widget _buildTextField(String label, TextEditingController controller, IconData icon) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: const Color(0xFFE6B566)),
        labelStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.black.withOpacity(0.1),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFE6B566)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  // Dropdown with custom styling
  Widget _buildDropdown() {
    return DropdownButtonFormField<String>(
      value: selectedCategory,
      hint: const Text(
        'Select Category',
        style: TextStyle(color: Colors.white),
      ),
      dropdownColor: Colors.black.withOpacity(0.9),
      decoration: InputDecoration(
        labelText: 'Category',
        labelStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.black.withOpacity(0.1),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFE6B566)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
      items: categories.map((String category) {
        return DropdownMenuItem<String>(
          value: category,
          child: Text(
            category,
            style: const TextStyle(color: Colors.white),
          ),
        );
      }).toList(),
      onChanged: (value) {
        selectedCategory = value;
      },
    );
  }
}
