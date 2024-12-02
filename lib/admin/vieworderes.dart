// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/adminorderget.dart';
// import 'package:project/customer/customerfunction/custorderget.dart';

// class Adminvieworderes extends StatelessWidget {
//   const Adminvieworderes({super.key});
  
//   get formattedDate => DateTime.now();
  
//   get formattedTime =>TimeOfDay.now();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//         child: ListView.builder(
//           itemCount: adminorderlist.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   color: Color.fromARGB(255, 241, 241, 245),
//                 ),
//                 height: 188,
//                 width: double.infinity,
//                 child: Row(
//                   children: [
//                     Container(
                      
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(8),
//                        ),
//                       height: 100,
//                       width: 80,
//                        child: Image.network(adminorderlist[index].image),
//                     ),
//                     Expanded(
//                       child: Column(
//                         children: [
//                           Text(adminorderlist[index].jewename),
//                            Text(adminorderlist[index].actualprice),
//                           Text(adminorderlist[index].rentprice),
// //  Text(adminorderlist[index].image),
//   Text(adminorderlist[index].category),
//   Text(adminorderlist[index].userid),

//                           Text('Date: $formattedDate'),
//                           Text('Time: $formattedTime'),
                          
                         
//                         ],
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





















import 'package:flutter/material.dart';
import 'package:project/admin/adminfunction/adminorderget.dart';

class Adminvieworderes extends StatelessWidget {
  const Adminvieworderes({super.key});

  get formattedDate => DateTime.now();
  
  get formattedTime => TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Orders"),
        backgroundColor: const Color(0xFFE6B566), // AppBar color using custom color
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE6B566), Color(0xFFD6D6D6)], // Gradient background
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          itemCount: adminorderlist.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16), // Rounded corners for card
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 241, 241, 245),
                    borderRadius: BorderRadius.circular(16), // Rounded corners for container
                  ),
                  // Removed fixed height to make it flexible
                  child: Row(
                    children: [
                      // Image section
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8), // Rounded corners for image
                        child: Image.network(
                          adminorderlist[index].image,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover, // Ensures the image covers the box well
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                adminorderlist[index].jewename,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey[700],
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                "Price: ${adminorderlist[index].actualprice}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  color:Colors.black,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                "Rent Price: ${adminorderlist[index].rentprice}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  color:Colors.black,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                "Category: ${adminorderlist[index].category}",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blueGrey[600],
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                "User ID: ${adminorderlist[index].userid}",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blueGrey[600],
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                'Date: $formattedDate',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blueGrey[500],
                                ),
                              ),
                              Text(
                                'Time: $formattedTime',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blueGrey[500],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
