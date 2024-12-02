// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';
// import 'package:project/admin/adminmodel/jewellarymodel.dart';
// import 'package:project/customer/payment.dart';

// class Viewjewellarydetails extends StatelessWidget {
//   const Viewjewellarydetails({
//     super.key, required this.jeweadded,
//   });
//   final Jewellarymodel jeweadded;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Container(
//           height: double.infinity,
//           width: double.infinity,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Container(
//                   height: 188,
//                   width: 188,
//                   color: const Color.fromARGB(255, 106, 186, 252),
//                   child: Image.network(jeweadded.image),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text("Actual Price"),
//                 Container(
//                   height: 46,
//                   width: 400,
//                   decoration: BoxDecoration(
//                       border: Border.all(), borderRadius: BorderRadius.circular(8)),
//                   child: Center(child: Text(jeweadded.actualprice)),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),Text("Quantity"),
//                 Container(
//                   height: 46,
//                   width: 400,
//                   decoration: BoxDecoration(
//                       border: Border.all(), borderRadius: BorderRadius.circular(8)),
//                   child: Center(child: Text(jeweadded.quantity)),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text("Available"),
//                 Container(
//                   height: 46,
//                   width: 400,
//                   decoration: BoxDecoration(
//                       border: Border.all(), borderRadius: BorderRadius.circular(8)),
//                   child: Center(child: Text(jeweadded.available)),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),Text("Quation Deposit"),
//                 Container(
//                   height: 46,
//                   width: 400,
//                   decoration: BoxDecoration(
//                       border: Border.all(), borderRadius: BorderRadius.circular(8)),
//                   child: Center(child: Text(jeweadded.cautiondeposit)),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),Text("Rent Price"),
//                 Container(
//                   height: 46,
//                   width: 400,
//                   decoration: BoxDecoration(
//                       border: Border.all(), borderRadius: BorderRadius.circular(8)),
//                   child: Center(child: Text(jeweadded.rentprice)),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
                      
//                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Payment(jeweadded:jeweadded)));
//                     },
//                     child: Text("ORDER"))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';
// import 'package:project/admin/adminmodel/jewellarymodel.dart';
// import 'package:project/customer/payment.dart';

// class Viewjewellarydetails extends StatelessWidget {
//   const Viewjewellarydetails({
//     super.key,
//     required this.jeweadded,
//   });
//   final Jewellarymodel jeweadded;

//   @override
//   Widget build(BuildContext context) {
//     // Define a theme for the page
//     final theme = Theme.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Jewellery Details",
//           style: theme.textTheme.titleLarge?.copyWith(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Colors.teal,
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // Jewellery image container
//                 Container(
//                   height: 200,
//                   width: 200,
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     borderRadius: BorderRadius.circular(16),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black12,
//                         blurRadius: 10,
//                         spreadRadius: 5,
//                       ),
//                     ],
//                   ),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(16),
//                     child: Image.network(
//                       jeweadded.image,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
                
//                 // Jewellery Details
//                 buildDetailRow(context, "Actual Price", jeweadded.actualprice),
//                 SizedBox(height: 10),
//                 buildDetailRow(context, "Quantity", jeweadded.quantity),
//                 SizedBox(height: 10),
//                 buildDetailRow(context, "Available", jeweadded.available),
//                 SizedBox(height: 10),
//                 buildDetailRow(context, "Caution Deposit", jeweadded.cautiondeposit),
//                 SizedBox(height: 10),
//                 buildDetailRow(context, "Rent Price", jeweadded.rentprice),
//                 SizedBox(height: 20),

//                 // Order Button
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.teal,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     shadowColor: Colors.tealAccent,
//                   ),
//                   onPressed: () {
//                     Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => Payment(jeweadded: jeweadded)));
//                   },
//                   child: Text(
//                     "ORDER",
//                     style: theme.textTheme.labelLarge?.copyWith(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper method to build details row
//   Widget buildDetailRow(BuildContext context, String title, String value) {
//     final theme = Theme.of(context);
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: theme.textTheme.titleMedium?.copyWith(
//             fontWeight: FontWeight.w600,
//             color: Colors.grey[800],
//           ),
//         ),
//         SizedBox(height: 4),
//         Container(
//           width: double.infinity,
//           padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
//           decoration: BoxDecoration(
//             color: Colors.grey[200],
//             borderRadius: BorderRadius.circular(12),
//             border: Border.all(color: Colors.grey),
//           ),
//           child: Text(
//             value,
//             style: theme.textTheme.bodyLarge?.copyWith(
//               color: Colors.black87,
//               fontSize: 16,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'package:project/admin/adminmodel/jewellarymodel.dart';
import 'package:project/customer/payment.dart';

class Viewjewellarydetails extends StatelessWidget {
  const Viewjewellarydetails({
    super.key,
    required this.jeweadded,
  });
  final Jewellarymodel jeweadded;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jewellery Details",
          style: theme.textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFFE6B566), // Gold color for app bar
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Jewellery image container
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      jeweadded.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Jewellery Details
                buildDetailRow(context, Icons.monetization_on, "Actual Price", jeweadded.actualprice),
                const SizedBox(height: 10),
                buildDetailRow(context, Icons.add_shopping_cart, "Quantity", jeweadded.quantity),
                const SizedBox(height: 10),
                buildDetailRow(context, Icons.check_circle_outline, "Available", jeweadded.available),
                const SizedBox(height: 10),
                buildDetailRow(context, Icons.security, "Caution Deposit", jeweadded.cautiondeposit),
                const SizedBox(height: 10),
                buildDetailRow(context, Icons.attach_money, "Rent Price", jeweadded.rentprice),
                const SizedBox(height: 30),

                // Order Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE6B566), // Gold color for button
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    shadowColor: Colors.tealAccent,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Payment(jeweadded: jeweadded)));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.shopping_bag, color: Colors.white),
                      const SizedBox(width: 8),
                      Text(
                        "ORDER",
                        style: theme.textTheme.labelLarge?.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to build details row with icons
  Widget buildDetailRow(BuildContext context, IconData icon, String title, String value) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: const Color(0xFFE6B566), size: 20), // Gold icon for each detail
            const SizedBox(width: 8),
            Text(
              title,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: const Color(0xFF3E1F47), // Dark purple for the title
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          decoration: BoxDecoration(
            color: const Color(0xFFD6D6D6), // Light gray background for details box
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFE6B566)), // Gold border
          ),
          child: Text(
            value,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: Colors.black87,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
