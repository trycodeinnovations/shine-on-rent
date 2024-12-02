// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';
// import 'package:project/customer/Viewjellerydetails.dart';
// import 'package:project/customer/payment.dart';

// class Jewellaryitems extends StatelessWidget {
//   const Jewellaryitems({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           // Text('demo'),
//           Expanded(
//             child: GridView.builder(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 2,childAspectRatio: .7),
//               itemCount: jewellarydata.length,
//               itemBuilder: (BuildContext context, int index) {
//                print( jewellarydata.length);
//                 return Container(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(18.0),
//                         child: Container(
//                           height: 100,
//                           color: Colors.amber,
//                           child: Image.network(jewellarydata[index].image),
//                         ),
//                       ),
//                        Text(jewellarydata[index].jewename),
//                       Text(jewellarydata[index].rentprice),
//                       ElevatedButton(
//                           onPressed: () {
                           
//                             // Navigator.pushNamed(context, "custviewjewellarydetails");
//                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Viewjewellarydetails(jeweadded: jewellarydata[index],)));
//                           },
//                           child: Text("VIEW"))
//                     ],
//                   ),
//                   height: 100,
//                   color: Colors.black12,
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';
// import 'package:project/customer/Viewjellerydetails.dart';
// import 'package:project/customer/payment.dart';

// class Jewellaryitems extends StatelessWidget {
//   const Jewellaryitems({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Jewellery Items",
//           style: theme.textTheme.titleLarge?.copyWith(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Colors.blue[900],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           children: [
//             // Grid of Jewellery Items
//             Expanded(
//               child: GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2, 
//                   mainAxisSpacing: 10, 
//                   crossAxisSpacing: 10, 
//                   childAspectRatio: .7,
//                 ),
//                 itemCount: jewellarydata.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(16),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black12,
//                           blurRadius: 10,
//                           spreadRadius: 5,
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Container(
//                             height: 120,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(12),
//                               color: Colors.grey[100],
//                             ),
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(12),
//                               child: Image.network(
//                                 jewellarydata[index].image,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Text(
//                           jewellarydata[index].jewename,
//                           style: theme.textTheme.titleMedium?.copyWith(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                         SizedBox(height: 6),
//                         Text(
//                           'Rent Price: ${jewellarydata[index].rentprice}',
//                           style: theme.textTheme.bodyMedium?.copyWith(
//                             color: Colors.grey[600],
//                           ),
//                         ),
//                         SizedBox(height: 10),
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.blue[900],
//                             padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),
//                           onPressed: () {
//                             Navigator.of(context).push(
//                               MaterialPageRoute(
//                                 builder: (context) => Viewjewellarydetails(
//                                   jeweadded: jewellarydata[index],
//                                 ),
//                               ),
//                             );
//                           },
//                           child: Text(
//                             "VIEW",
//                             style: theme.textTheme.labelLarge?.copyWith(
//                               fontSize: 16,
//                               color: Colors.white,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:project/admin/adminfunction/jewellaryget.dart';
import 'package:project/customer/Viewjellerydetails.dart';

class Jewellaryitems extends StatelessWidget {
  const Jewellaryitems({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jewellery Items",
          style: theme.textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFFE6B566), // Changed AppBar to gold color
      ),
      body: Container(
        // Updated gradient to gold and light gray
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE6B566), Color(0xFFD6D6D6)], // Gold to light gray gradient
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // Grid of Jewellery Items
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, 
                    mainAxisSpacing: 10, 
                    crossAxisSpacing: 10, 
                    childAspectRatio: .7,
                  ),
                  itemCount: jewellarydata.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 15,
                            spreadRadius: 3,
                            offset: const Offset(4, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey[100],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  jewellarydata[index].image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            jewellarydata[index].jewename,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: const Color(0xFF3E1F47), // Dark purple for title
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Rent Price: ${jewellarydata[index].rentprice}',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: const Color(0xFF6A6A6A), // Softer color for the price
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFE6B566), // Gold color for button
                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Viewjewellarydetails(
                                    jeweadded: jewellarydata[index],
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              "VIEW",
                              style: theme.textTheme.labelLarge?.copyWith(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
