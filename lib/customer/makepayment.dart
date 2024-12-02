// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';
// import 'package:project/admin/adminmodel/jewellarymodel.dart';
// import 'package:project/customer/customerfunction/custorderget.dart';
// import 'package:project/customer/customerfunction/orderfun.dart';

// class Makepayment extends StatelessWidget {
//   Makepayment({super.key,required this.jeweadded});
//    // String? _selectedPaymentMethod;
//   final Jewellarymodel jeweadded;

// ValueNotifier<String?>selectedpaymemnt=ValueNotifier(null);

//   // List of payment methods
//   final List<String> _paymentMethods = ['UPI', 'Credit Card', 'Debit Card'];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body:
      
//        Padding(
        
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
          
//           children: [
//             Text("Rent Price"),
//             SizedBox(height: 10,),
//            Container(
//             height: 46,
//             width: 400,
//             decoration: BoxDecoration(border: Border.all(),  borderRadius: BorderRadius.circular(8)),
//             child: Center(child: Text(jeweadded.rentprice))),
//             SizedBox(height: 10,),
//             Text("Select Payment Method",style: TextStyle(color: Color.fromARGB(255, 4, 12, 122)),),
//             ValueListenableBuilder(valueListenable: selectedpaymemnt,builder: (context, value, child) => 
//                Column(
//                   children: _paymentMethods.map((method) {
//                     return RadioListTile<String>(
//                       title: Text(method),
//                       value: method,
//                       groupValue: selectedpaymemnt.value,
//                       onChanged: (String? value) {
//                         print(value);
//                         selectedpaymemnt.value=value;
//                       },
//                     );
//                   }).toList(),
//                 ),
//             ),
//             SizedBox(height: 10,),
//             TextFormField(decoration: InputDecoration(hintText: "UPI Number",border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)))),
//   //           
//             ElevatedButton(onPressed: ()async {
            
//              Map<String,dynamic> data={
//                 'productname':jeweadded.jewename,
//                  'actualprice':jeweadded.actualprice,
//                 'rentprice':jeweadded.rentprice,
//                 'image':jeweadded.image,
//                 'category':jeweadded.category,
//                 'userid':FirebaseAuth.instance.currentUser!.email
                
                
                
                
//               };
              
//             await   orderfun(data);
//              await   orderget();
//               Navigator.pushNamed(context, "custhome");
//             }, child: Text("payment"))
//           ],
//         ),
//       ),
//     );
//   }
// }




// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:project/admin/adminmodel/jewellarymodel.dart';
// import 'package:project/customer/customerfunction/orderfun.dart';
// import 'package:project/customer/customerfunction/custorderget.dart';

// class Makepayment extends StatelessWidget {
//   Makepayment({super.key, required this.jeweadded});

//   final Jewellarymodel jeweadded;
//   ValueNotifier<String?> selectedpaymemnt = ValueNotifier(null);

//   // List of payment methods
//   final List<String> _paymentMethods = ['UPI', 'Credit Card', 'Debit Card'];

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Make Payment',
//           style: theme.textTheme.titleLarge?.copyWith(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Colors.teal,
//       ),
//       body: SafeArea( // Add SafeArea to avoid overlap with system UI
//         child: SingleChildScrollView( // Add SingleChildScrollView to make content scrollable
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Rent Price
//                 buildPaymentDetail(theme, "Rent Price", jeweadded.rentprice),
//                 SizedBox(height: 20),

//                 // Select Payment Method
//                 Text(
//                   "Select Payment Method",
//                   style: theme.textTheme.titleMedium?.copyWith(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.teal[800],
//                   ),
//                 ),
//                 SizedBox(height: 10),

//                 // Payment Methods Radio Buttons
//                 ValueListenableBuilder(
//                   valueListenable: selectedpaymemnt,
//                   builder: (context, value, child) => Column(
//                     children: _paymentMethods.map((method) {
//                       return RadioListTile<String>(
//                         title: Text(
//                           method,
//                           style: theme.textTheme.bodyLarge?.copyWith(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 16,
//                           ),
//                         ),
//                         value: method,
//                         groupValue: selectedpaymemnt.value,
//                         onChanged: (String? value) {
//                           selectedpaymemnt.value = value;
//                         },
//                       );
//                     }).toList(),
//                   ),
//                 ),
//                 SizedBox(height: 20),

//                 // UPI Number Input Field
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Enter UPI Number",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     filled: true,
//                     fillColor: Colors.grey[200],
//                   ),
//                   style: theme.textTheme.bodyLarge?.copyWith(fontSize: 16),
//                 ),
//                 SizedBox(height: 30),

//                 // Payment Button
//                 Center(
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.teal,
//                       padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     onPressed: () async {
//                       Map<String, dynamic> data = {
//                         'productname': jeweadded.jewename,
//                         'actualprice': jeweadded.actualprice,
//                         'rentprice': jeweadded.rentprice,
//                         'image': jeweadded.image,
//                         'category': jeweadded.category,
//                         'userid': FirebaseAuth.instance.currentUser!.email,
//                       };

//                       await orderfun(data);
//                       await orderget();
//                       Navigator.pushNamed(context, "custhome");
//                     },
//                     child: Text(
//                       "Proceed to Payment",
//                       style: theme.textTheme.labelLarge?.copyWith(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper function to build payment detail row
//   Widget buildPaymentDetail(ThemeData theme, String title, String value) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: theme.textTheme.titleMedium?.copyWith(
//             fontWeight: FontWeight.w600,
//             color: Colors.teal[900],
//           ),
//         ),
//         SizedBox(height: 8),
//         Container(
//           width: double.infinity,
//           padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//           decoration: BoxDecoration(
//             color: Colors.blue[100],
//             borderRadius: BorderRadius.circular(12),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black12,
//                 blurRadius: 8,
//                 spreadRadius: 2,
//               ),
//             ],
//           ),
//           child: Text(
//             value,
//             style: theme.textTheme.bodyLarge?.copyWith(
//               fontSize: 16,
//               color: Colors.black87,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/admin/adminmodel/jewellarymodel.dart';
import 'package:project/customer/customerfunction/orderfun.dart';
import 'package:project/customer/customerfunction/custorderget.dart';

class Makepayment extends StatelessWidget {
  Makepayment({super.key, required this.jeweadded});

  final Jewellarymodel jeweadded;
  ValueNotifier<String?> selectedpaymemnt = ValueNotifier(null);

  // List of payment methods
  final List<String> _paymentMethods = ['UPI', 'Credit Card', 'Debit Card'];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Make Payment',
          style: theme.textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFFE6B566), // Gold color for app bar
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Rent Price
                buildPaymentDetail(
                  theme, Icons.attach_money, "Rent Price", jeweadded.rentprice),
                const SizedBox(height: 20),

                // Select Payment Method
                Row(
                  children: [
                    const Icon(Icons.payment, color: Color(0xFFE6B566)),
                    const SizedBox(width: 8),
                    Text(
                      "Select Payment Method",
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF3E1F47), // Dark color for the title
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                // Payment Methods Radio Buttons
                ValueListenableBuilder(
                  valueListenable: selectedpaymemnt,
                  builder: (context, value, child) => Column(
                    children: _paymentMethods.map((method) {
                      return RadioListTile<String>(
                        title: Text(
                          method,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        value: method,
                        groupValue: selectedpaymemnt.value,
                        activeColor: const Color(0xFFE6B566), // Gold color for selection
                        onChanged: (String? value) {
                          selectedpaymemnt.value = value;
                        },
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 20),

                // UPI Number Input Field
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter UPI Number",
                    prefixIcon: const Icon(Icons.account_balance_wallet, color: Color(0xFFE6B566)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: const Color(0xFFD6D6D6), // Light gray background
                  ),
                  style: theme.textTheme.bodyLarge?.copyWith(fontSize: 16),
                ),
                const SizedBox(height: 30),

                // Payment Button
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE6B566), // Gold color for button
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadowColor: Colors.black45,
                    ),
                    onPressed: () async {
                      Map<String, dynamic> data = {
                        'productname': jeweadded.jewename,
                        'actualprice': jeweadded.actualprice,
                        'rentprice': jeweadded.rentprice,
                        'image': jeweadded.image,
                        'category': jeweadded.category,
                        'userid': FirebaseAuth.instance.currentUser!.email,
                      };

                      await orderfun(data);
                      await orderget();
                      Navigator.pushNamed(context, "custhome");
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.arrow_forward, color: Colors.white),
                        const SizedBox(width: 8),
                        Text(
                          "Proceed to Payment",
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
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
      ),
    );
  }

  // Helper function to build payment detail row with icons
  Widget buildPaymentDetail(ThemeData theme, IconData icon, String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: const Color(0xFFE6B566)), // Gold icon
            const SizedBox(width: 8),
            Text(
              title,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: const Color(0xFF3E1F47), // Dark color for title
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xFFD6D6D6), // Light gray background
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Text(
            value,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
