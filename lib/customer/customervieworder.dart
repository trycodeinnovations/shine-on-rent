// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';
// import 'package:project/customer/customerfunction/custorderget.dart';

// class Custvieworder extends StatelessWidget {
//   const Custvieworder({super.key});
  
//   get formattedDate => DateTime.now();
  
//   get formattedTime => TimeOfDay.now();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//         child: ListView.builder(
//           itemCount: orderdata.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 145,
//                 width: double.infinity,
//                 color:  const Color.fromARGB(255, 134, 194, 243),
                
//                 child: Row(
//                   children: [
//                     Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.blue,),
//                       height: 88,  
//                       width: 88,
//                       child: Image.network(orderdata[index].image),
                      
//                     ),
//                     Expanded(
//                       child: Column(
                        
//                         children: [
//                           Text(orderdata[index].jewename),
//                           Text(orderdata[index].rentprice),
//                           //  Text(orderdata[index].userid),
//                            Text(orderdata[index].actualprice),
//                           //  Text(orderdata[index].image),
//                            Text(orderdata[index].category),
//                           Text('Date: $formattedDate'),
//                           Text('Time: $formattedTime'),
                          
                        
//                         ],
                      
//                       ),
//                     ),  IconButton(onPressed: () {
                          
//                         }, icon:Icon(Icons.delete))
                    
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



// import 'package:flutter/material.dart';
// import 'package:project/customer/customerfunction/custorderget.dart';

// class Custvieworder extends StatelessWidget {
//   const Custvieworder({super.key});

//   get formattedDate => DateTime.now();

//   get formattedTime => TimeOfDay.now();

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Your Orders',
//           style: theme.textTheme.titleLarge?.copyWith(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Colors.lightBlue[400],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: ListView.builder(
//           itemCount: orderdata.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.blue[50], // Light blue background
//                   borderRadius: BorderRadius.circular(12), // Rounded corners
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 8,
//                       spreadRadius: 2,
//                     ),
//                   ],
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Row(
//                     children: [
//                       // Image section
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8),
//                           color: Colors.blue[100],
//                         ),
//                         height: 88,
//                         width: 88,
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(8),
//                           child: Image.network(
//                             orderdata[index].image,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 12),

//                       // Details section
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               orderdata[index].jewename,
//                               style: theme.textTheme.titleMedium?.copyWith(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.blue[900],
//                               ),
//                             ),
//                             SizedBox(height: 6),
//                             Text(
//                               'Rent Price: ${orderdata[index].rentprice}',
//                               style: theme.textTheme.bodyMedium?.copyWith(
//                                 color: Colors.blueGrey[800],
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             SizedBox(height: 6),
//                             Text(
//                               'Actual Price: ${orderdata[index].actualprice}',
//                               style: theme.textTheme.bodyMedium?.copyWith(
//                                 color: Colors.blueGrey[800],
//                               ),
//                             ),
//                             SizedBox(height: 6),
//                             Text(
//                               'Category: ${orderdata[index].category}',
//                               style: theme.textTheme.bodyMedium?.copyWith(
//                                 color: Colors.blueGrey[600],
//                               ),
//                             ),
//                             SizedBox(height: 6),
//                             Row(
//                               children: [
//                                 Text(
//                                   'Date: $formattedDate',
//                                   style: theme.textTheme.bodySmall?.copyWith(
//                                     color: Colors.grey[700],
//                                   ),
//                                 ),
//                                 Spacer(),
//                                 Text(
//                                   'Time: $formattedTime',
//                                   style: theme.textTheme.bodySmall?.copyWith(
//                                     color: Colors.grey[700],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),

//                       // Delete Button
//                       IconButton(
//                         onPressed: () {
//                           // Add delete functionality here
//                         },
//                         icon: Icon(Icons.delete, color: Colors.redAccent),
//                         tooltip: "Delete Order",
//                       ),
//                     ],
//                   ),
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

import 'package:intl/intl.dart'; // Import the intl package for date formatting
import 'package:project/customer/customerfunction/custorderget.dart';

class Custvieworder extends StatelessWidget {
  const Custvieworder({super.key});

  // Format the date to show only yyyy-MM-dd
  String get formattedDate => DateFormat('yyyy-MM-dd').format(DateTime.now());

  // Format the time to show only the time part
  String get formattedTime => DateFormat('HH:mm').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFFD6D6D6), // Soft grey background color for elegance
      appBar: AppBar(
        title: Row(
          children: [
            const Icon(Icons.shopping_cart, color: Colors.white, size: 28),
            const SizedBox(width: 8),
            Text(
              'Your Orders',
              style: theme.textTheme.titleLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFFE6B566), // Gold AppBar color for a refined look
        elevation: 5,
      ),
      body: Stack(
        children: [
          // Adding a gradient background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFE6B566), Color(0xFFD6D6D6)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: orderdata.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          spreadRadius: 2,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(12),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          orderdata[index].image,
                          fit: BoxFit.cover,
                          height: 60,
                          width: 60,
                        ),
                      ),
                      title: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color(0xFFE6B566),
                            size: 20,
                          ),
                          const SizedBox(width: 6),
                          Flexible(
                            child: Text(
                              orderdata[index].jewename,
                              style: theme.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF3E1F47),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(
                                Icons.attach_money,
                                color: Color(0xFFE6B566),
                                size: 20,
                              ),
                              const SizedBox(width: 4),
                              Flexible(
                                child: Text(
                                  'Rent Price: ${orderdata[index].rentprice}',
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                    color: Colors.black87,
                                    fontSize: 16,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(
                                Icons.attach_money,
                                color: Color(0xFFE6B566),
                                size: 20,
                              ),
                              const SizedBox(width: 4),
                              Flexible(
                                child: Text(
                                  'Actual Price: ${orderdata[index].actualprice}',
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                    color: Colors.black87,
                                    fontSize: 16,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              const Icon(
                                Icons.category,
                                color: Color(0xFFD6D6D6),
                                size: 20,
                              ),
                              const SizedBox(width: 4),
                              Flexible(
                                child: Text(
                                  'Category: ${orderdata[index].category}',
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color: Colors.grey[600],
                                    fontSize: 14,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_today,
                                color: Color(0xFFD6D6D6),
                                size: 20,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'Date: $formattedDate',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: Colors.grey[700],
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time,
                                color: Color(0xFFD6D6D6),
                                size: 20,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'Time: $formattedTime',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: Colors.grey[700],
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFE6B566),
                        size: 18,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:project/customer/customerfunction/custorderget.dart';

// class Custvieworder extends StatelessWidget {
//   const Custvieworder({super.key});

//   get formattedDate => DateTime.now();

//   get formattedTime => TimeOfDay.now();

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Your Orders',
//           style: theme.textTheme.titleLarge?.copyWith(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Colors.lightBlue[400],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: ListView.builder(
//           itemCount: orderdata.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.blue[50], // Light blue background
//                   borderRadius: BorderRadius.circular(12), // Rounded corners
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 8,
//                       spreadRadius: 2,
//                     ),
//                   ],
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Row(
//                     children: [
//                       // Image section
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8),
//                           color: Colors.blue[100],
//                         ),
//                         height: 88,
//                         width: 88,
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(8),
//                           child: Image.network(
//                             orderdata[index].image,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 12),

//                       // Details section
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               orderdata[index].jewename,
//                               style: theme.textTheme.titleMedium?.copyWith(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.blue[900],
//                               ),
//                             ),
//                             SizedBox(height: 6),
//                             Text(
//                               'Rent Price: ${orderdata[index].rentprice}',
//                               style: theme.textTheme.bodyMedium?.copyWith(
//                                 color: Colors.blueGrey[800],
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             SizedBox(height: 6),
//                             Text(
//                               'Actual Price: ${orderdata[index].actualprice}',
//                               style: theme.textTheme.bodyMedium?.copyWith(
//                                 color: Colors.blueGrey[800],
//                               ),
//                             ),
//                             SizedBox(height: 6),
//                             Text(
//                               'Category: ${orderdata[index].category}',
//                               style: theme.textTheme.bodyMedium?.copyWith(
//                                 color: Colors.blueGrey[600],
//                               ),
//                             ),
//                             SizedBox(height: 6),

//                             // Date and Time section in a Column
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Date: $formattedDate',
//                                   style: theme.textTheme.bodySmall?.copyWith(
//                                     color: Colors.grey[700],
//                                   ),
//                                 ),
//                                 Text(
//                                   'Time: $formattedTime',
//                                   style: theme.textTheme.bodySmall?.copyWith(
//                                     color: Colors.grey[700],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),

//                       // Delete Button
//                       // IconButton(
//                       //   onPressed: () {
//                       //     // Add delete functionality here
//                       //   },
//                       //   icon: Icon(Icons.delete, color: Colors.redAccent),
//                       //   tooltip: "Delete Order",
//                       // ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }







