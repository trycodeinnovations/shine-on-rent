// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';
// import 'package:project/admin/adminmodel/jewellarymodel.dart';
// import 'package:project/customer/customerfunction/orderfun.dart';
// import 'package:project/customer/makepayment.dart';

// class Payment extends StatelessWidget {
//   const Payment({super.key, required this.jeweadded});
// final Jewellarymodel jeweadded;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Center(
//           child: Column(
//             children: [
//               Text("Actual Price"),
//               Container(
//                 height: 44,
//                 width: double.infinity,
//                 color: const Color.fromARGB(255, 134, 194, 243),
//                 child: Center(child: Text(jeweadded.actualprice))),
//               SizedBox(height: 10,),
//               Text("Caution Deposit"),
//               Container(
//                 height: 44,
//                 width: double.infinity,
//                 color: const Color.fromARGB(255, 134, 194, 243),
//                 child: Center(child: Text(jeweadded.cautiondeposit))),
//               SizedBox(height: 10,),
//               Text("Rent Price"),
//               Container(
//                 height: 44,
//                 width: double.infinity,
//                 color: const Color.fromARGB(255, 134, 194, 243),
//                 child: Center(child: Text(jeweadded.rentprice))),
//               SizedBox(height: 18,),
//               ElevatedButton(onPressed: () {
// //                 Map<String, dynamic> jewellaryMap = {
// //   'data': jewellarydata.map((e) => e.toJson()).toList()
// // };
// Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Makepayment(jeweadded: jeweadded)));
                   

//                 // Navigator.pushNamed(context, "custmakepayment");
//               }, child: Text("Payment"))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:project/admin/adminmodel/jewellarymodel.dart';
// import 'package:project/customer/makepayment.dart';

// class Payment extends StatelessWidget {
//   const Payment({super.key, required this.jeweadded});
//   final Jewellarymodel jeweadded;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Payment Details",
//           style: theme.textTheme.titleLarge?.copyWith(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Colors.blue[900],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Actual Price
//               buildPaymentDetail(theme, "Actual Price", jeweadded.actualprice),
//               SizedBox(height: 10),

//               // Caution Deposit
//               buildPaymentDetail(theme, "Caution Deposit", jeweadded.cautiondeposit),
//               SizedBox(height: 10),

//               // Rent Price
//               buildPaymentDetail(theme, "Rent Price", jeweadded.rentprice),
//               SizedBox(height: 30),

//               // Payment Button
//               Center(
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.teal,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     shadowColor: Colors.tealAccent,
//                   ),
//                   onPressed: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (context) => Makepayment(jeweadded: jeweadded),
//                       ),
//                     );
//                   },
//                   child: Text(
//                     "Payment",
//                     style: theme.textTheme.labelLarge?.copyWith(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
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
//             color: Colors.grey[800],
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













// import 'package:flutter/material.dart';
// import 'package:project/admin/adminmodel/jewellarymodel.dart';
// import 'package:project/customer/makepayment.dart';

// class Payment extends StatelessWidget {
//   const Payment({super.key, required this.jeweadded});
//   final Jewellarymodel jeweadded;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Payment Details",
//           style: theme.textTheme.titleLarge?.copyWith(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Color(0xFFE6B566), // Gold color for app bar
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Actual Price
//               buildPaymentDetail(
//                   theme, Icons.price_check, "Actual Price", jeweadded.actualprice),
//               SizedBox(height: 10),

//               // Caution Deposit
//               buildPaymentDetail(
//                   theme, Icons.security, "Caution Deposit", jeweadded.cautiondeposit),
//               SizedBox(height: 10),

//               // Rent Price
//               buildPaymentDetail(
//                   theme, Icons.attach_money, "Rent Price", jeweadded.rentprice),
//               SizedBox(height: 30),

//               // Payment Button
//               Center(
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xFFE6B566), // Gold color for button
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     shadowColor: Colors.tealAccent,
//                   ),
//                   onPressed: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (context) => Makepayment(jeweadded: jeweadded),
//                       ),
//                     );
//                   },
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Icon(Icons.payment, color: Colors.white), // Icon for the button
//                       SizedBox(width: 8),
//                       Text(
//                         "Payment",
//                         style: theme.textTheme.labelLarge?.copyWith(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper function to build payment detail row with icons
//   Widget buildPaymentDetail(
//       ThemeData theme, IconData icon, String title, String value) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             Icon(icon, color: Color(0xFFE6B566), size: 20), // Gold icon
//             SizedBox(width: 8),
//             Text(
//               title,
//               style: theme.textTheme.titleMedium?.copyWith(
//                 fontWeight: FontWeight.w600,
//                 color: Color(0xFF3E1F47), // Dark purple for title
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 8),
//         Container(
//           width: double.infinity,
//           padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//           decoration: BoxDecoration(
//             color: Color(0xFFD6D6D6), // Light gray background
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























import 'package:flutter/material.dart';
import 'package:project/admin/adminmodel/jewellarymodel.dart';
import 'package:project/customer/makepayment.dart';

class Payment extends StatelessWidget {
  const Payment({super.key, required this.jeweadded});
  final Jewellarymodel jeweadded;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Details",
          style: theme.textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFB88B4A), // Premium gold shade
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFF5E1DA), Color(0xFFFDEEE8)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Informative section with gradient background
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    colors: [Color(0xFFE6B566), Color(0xFFF4E3C1)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Before Proceeding with the Payment, please ensure that the product details are correct. Double-check your address, and verify the product name and details. If you mistakenly pay for the wrong product, please follow the steps below:",
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontSize: 16,
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "How to Resolve Payment Issues?",
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    _buildContactInfo("8744878888"),
                    _buildContactInfo("jewelsrental@gmail.com"),
                    const SizedBox(height: 8),
                    _buildBulletPoint(
                        theme, "If you've made a payment for the wrong product, please email us your account details immediately."),
                    _buildBulletPoint(theme,
                        "Take a screenshot of the Google Pay transaction and send it to our support email."),
                    _buildBulletPoint(theme,
                        "Contact our customer support at the number provided on our contact page for assistance."),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Payment Details Section
              _buildPaymentDetailCard(
                  theme, "Actual Price", jeweadded.actualprice, Icons.price_check),
              const SizedBox(height: 10),
              _buildPaymentDetailCard(theme, "Caution Deposit",
                  jeweadded.cautiondeposit, Icons.security),
              const SizedBox(height: 10),
              _buildPaymentDetailCard(
                  theme, "Rent Price", jeweadded.rentprice, Icons.attach_money),

              const SizedBox(height: 30),

              // Payment Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB88B4A),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadowColor: Colors.black26,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          Makepayment(jeweadded: jeweadded),
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.payment, color: Colors.white),
                    const SizedBox(width: 8),
                    Text(
                      "Proceed to Pay",
                      style: theme.textTheme.labelLarge?.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Bullet Point Builder
  Widget _buildBulletPoint(ThemeData theme, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 6),
          child: Icon(Icons.circle, size: 8, color: Colors.white),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  // Contact Info Builder
  Widget _buildContactInfo(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }

  // Payment Details Card Builder
  Widget _buildPaymentDetailCard(
      ThemeData theme, String title, String value, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: const Color(0xFFE6B566),
            child: Icon(icon, color: Colors.white, size: 28),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3E1F47),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  value,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
