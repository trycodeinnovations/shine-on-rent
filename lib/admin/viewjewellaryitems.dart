// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/addminviewjeweget.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';
// import 'package:project/admin/editjewellaryitems.dart';

// class Viewjewellaryitems extends StatelessWidget {
//   const Viewjewellaryitems({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("JEWELLARY ITEMS")),
//       body: GridView.builder(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, crossAxisSpacing: 4),
//         itemCount: adminviewjewedata.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Column(
//             children: [
//               Container(
//                 decoration: BoxDecoration(border: Border.all(),
//                    borderRadius: BorderRadius.circular(8) ,),
//                 height: 144,
//                 width: 144,
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 88,
//                       width: 88,
//                       child: Image.network(adminviewjewedata[index].image),
//                     ),
//                     Text(adminviewjewedata[index].jewename),
//                     Expanded(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           IconButton(
//                               onPressed: () {
//                                 jeweget(Category);
//                                 Navigator.pushReplacement(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>
//                                             Editjewellaryitems(
//                                                 jewename: adminviewjewedata[index]
//                                                     .jewename,quantity: adminviewjewedata[index].quantity,
//                                                     Category: adminviewjewedata[index].category,
//                                                     actualprice: adminviewjewedata[index].actualprice,
//                                                     rentprice: adminviewjewedata[index].rentprice,
//                                                     available: adminviewjewedata[index].available,)));
//                               },
//                               icon: Icon(Icons.edit)),
//                           //     
//                           SizedBox(
//                             height: 10,
//                           ),
//                           IconButton(onPressed: () {}, icon: Icon(Icons.delete))
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }



// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/addminviewjeweget.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';
// import 'package:project/admin/editjewellaryitems.dart';
// import 'package:project/customer/customerfunction/custorderget.dart';
// import 'package:project/customer/customerfunction/deletejeweitem.dart';

// class Viewjewellaryitems extends StatelessWidget {
//   const Viewjewellaryitems({super.key});
  


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/admin/adminfunction/addminviewjeweget.dart';
import 'package:project/admin/adminfunction/jewellaryget.dart';
import 'package:project/admin/editjewellaryitems.dart';
import 'package:project/customer/customerfunction/custorderget.dart';
import 'package:project/customer/customerfunction/deletejeweitem.dart';

class Viewjewellaryitems extends StatelessWidget {
  const Viewjewellaryitems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Jewelry Items",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFE6B566), // Updated to soft gold color
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.75,
          ),
          itemCount: adminviewjewedata.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Placeholder for future functionality on tap
              },
              child: Card(
                elevation: 6,
                shadowColor: Colors.black38,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: const Color(0xFFD6D6D6), // Light grey for card background
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Jewelry Image
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                      child: Image.network(
                        adminviewjewedata[index].image,
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Jewelry Name
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        adminviewjewedata[index].jewename,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xFFE6B566), // Soft gold text color
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 6),
                    // Edit and Delete Buttons
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Edit Icon
                            IconButton(
                              icon: const Icon(Icons.edit, color: Color(0xFFE6B566)),
                              onPressed: () {
                                jeweget(Category);
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Editjewellaryitems(
                                      jewename: adminviewjewedata[index].jewename,
                                      quantity: adminviewjewedata[index].quantity,
                                      Category: adminviewjewedata[index].category,
                                      actualprice: adminviewjewedata[index].actualprice,
                                      rentprice: adminviewjewedata[index].rentprice,
                                      available: adminviewjewedata[index].available,
                                      id: adminviewjewedata[index].id,
                                    ),
                                  ),
                                ); 
                              },
                              tooltip: "Edit Item",
                            ),
                            // Delete Icon
                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.red[600]),
                              onPressed: () async {
                                await deleteworkfun(adminviewjewedata[index].id);
                                await orderget();
                              },
                              tooltip: "Delete Item",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Jewellary Items", style: TextStyle(color: Colors.white)),
//         backgroundColor: Colors.blue[800],
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 8,
//             mainAxisSpacing: 8,
//             childAspectRatio: 0.75,
//           ),
//           itemCount: adminviewjewedata.length,
//           itemBuilder: (BuildContext context, int index) {
//             return GestureDetector(
//               onTap: () {
//                 // You can add functionality here if needed when an item is tapped
//               },
//               child: Card(
//                 elevation: 4,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     // Jewelry Image
//                     ClipRRect(
//                       borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
//                       child: Image.network(
//                         adminviewjewedata[index].image,
//                         height: 120,
//                         width: double.infinity,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     // Jewelry Name
//                     Text(
//                       adminviewjewedata[index].jewename,
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                         color: Colors.blueGrey[900],
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     SizedBox(height: 4),
//                     // Edit and Delete Buttons
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             // Edit Icon
//                             IconButton(
//                               icon: Icon(Icons.edit, color: Colors.blue[600]),
//                               onPressed: () {
//                                 jeweget(Category);
//                                 Navigator.pushReplacement(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => Editjewellaryitems(
//                                       jewename: adminviewjewedata[index].jewename,
//                                       quantity: adminviewjewedata[index].quantity,
//                                       Category: adminviewjewedata[index].category,
//                                       actualprice: adminviewjewedata[index].actualprice,
//                                       rentprice: adminviewjewedata[index].rentprice,
//                                       available: adminviewjewedata[index].available,
//                                       id:adminviewjewedata[index].id,
//                                     ),
//                                   ),
//                                 ); 
//                               },
//                             ),
//                             // Delete Icon
//                             IconButton(
//                               icon: Icon(Icons.delete, color: Colors.red[600]),
//                               onPressed: () async{
//                                await deleteworkfun(adminviewjewedata[index].id);
//                              await   orderget();
//                                 // Add delete functionality here
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }












