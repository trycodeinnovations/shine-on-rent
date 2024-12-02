// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/paymentget.dart';

// class PaymentDetails extends StatelessWidget {
//   const PaymentDetails({super.key});
  
//   get formattedDate =>DateTime.now();
  
//   get formattedTime => TimeOfDay.now();

   
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
    
//       body: Column(
        
//         children: [
//           SizedBox(height: 20,),
//           Center(
//               child: Text(
//             "PAYMENT DETAILS",
//             style: TextStyle(color: Color.fromARGB(255, 14, 4, 104)),
//           )),
//           SizedBox(
//             height: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Card(
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   color: Colors.blue,
//                 ),
//                 height: 100,
//                 width: double.infinity,
//                 child: Column(
//                   children: [
//                     Text(paymentdata.first.custname),
//                     Text(paymentdata.first.jewename),
//                     Text(paymentdata.first.category),
//                     Text(paymentdata.first.image),
//                     Text(paymentdata.first.rentprice),
//                     Text(paymentdata.first.userid),
//                      Text('Date: $formattedDate'),
//                           Text('Time: $formattedTime'),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/adminorderget.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';
// import 'package:project/customer/customerfunction/custorderget.dart';

// class PaymentDetails extends StatelessWidget {
//   const PaymentDetails({super.key});
  
//   get formattedDate => DateTime.now();
  
//   get formattedTime => TimeOfDay.now();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: adminorderlist.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: const Color.fromARGB(255, 118, 187, 243),
//               ),
//               height: 100,
//               width: double.infinity,
//               child: Column(
//                 children: [
//                   Text(adminorderlist.first.jewename),
//                   Text(adminorderlist.first.actualprice),
//                   Text(adminorderlist.first.userid),
//                    Text(adminorderlist.first.category),
//                     Text(adminorderlist.first.image),
//                     Text(adminorderlist.first.rentprice),
//                    Text('Date: $formattedDate'),
//                  Text('Time: $formattedTime'),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/adminorderget.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';
// import 'package:project/customer/customerfunction/custorderget.dart';

// class PaymentDetails extends StatelessWidget {
//   const PaymentDetails({super.key});

//   // Formatters for date and time
//   String get formattedDate => DateTime.now().toLocal().toString().split(' ')[0];
  
//   // Modify formattedTime to take BuildContext as a parameter
//   String formattedTime(BuildContext context) => TimeOfDay.now().format(context);

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Scaffold(
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16.0),
//         itemCount: adminorderlist.length,
//         itemBuilder: (BuildContext context, int index) {
//           final order = adminorderlist[index];
          
//           return Padding(
//             padding: const EdgeInsets.symmetric(vertical: 8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: theme.cardColor,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12,
//                     offset: Offset(0, 4),
//                     blurRadius: 8.0,
//                   ),
//                 ],
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       order.jewename,
//                       style: theme.textTheme.titleLarge?.copyWith(
//                         color: theme.primaryColorDark,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     Text(
//                       'Price: ${order.actualprice}',
//                       style: theme.textTheme.bodyLarge?.copyWith(
//                         color: Colors.black87,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
//                     Text(
//                       'User ID: ${order.userid}',
//                       style: theme.textTheme.bodyMedium?.copyWith(
//                         color: Colors.black54,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
//                     Text(
//                       'Category: ${order.category}',
//                       style: theme.textTheme.bodyMedium?.copyWith(
//                         color: Colors.black54,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
//                     Text(
//                       'Rent Price: ${order.rentprice}',
//                       style: theme.textTheme.bodyMedium?.copyWith(
//                         color: Colors.black54,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Date: $formattedDate',
//                           style: theme.textTheme.bodySmall,
//                         ),
//                         Text(
//                           'Time: ${formattedTime(context)}',  // Pass context here
//                           style: theme.textTheme.bodySmall,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:project/admin/adminfunction/adminorderget.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  // Formatters for date and time
  String get formattedDate => DateTime.now().toLocal().toString().split(' ')[0];
  
  // Modify formattedTime to take BuildContext as a parameter
  String formattedTime(BuildContext context) => TimeOfDay.now().format(context);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: adminorderlist.length,
        itemBuilder: (BuildContext context, int index) {
          final order = adminorderlist[index];
          
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),  // Rounded corners for the container
                color: theme.cardColor,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 4),
                    blurRadius: 8.0,
                  ),
                ],
                gradient: const LinearGradient(
                  colors: [Color(0xFFE6B566), Color(0xFFD6D6D6)],  // Background gradient
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      order.jewename,
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: theme.primaryColorDark,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,  // Added letter spacing for style
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Divider(  // Added divider to separate content sections
                      color: Color(0xFFE6B566),
                      thickness: 1,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Price: ${order.actualprice}',
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: Colors.black87,
                        fontSize: 18,  // Slightly larger font for price
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    _buildInfoRow('User ID: ', order.userid),
                    _buildInfoRow('Category: ', order.category),
                    _buildInfoRow('Rent Price: ', order.rentprice),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Date: $formattedDate',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Time: ${formattedTime(context)}',  // Pass context here
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // Helper method to create a row for displaying information with a label
  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(
              color:Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            value,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
