// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/replyget.dart';
// import 'package:project/customer/customerfunction/complaintget.dart';
// import 'package:project/customer/customerfunction/copltuserget.dart';

// class Custviewcomplaintsreply extends StatelessWidget {
//   const Custviewcomplaintsreply({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: ListView.builder(
//         itemCount: usercompltlist.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: Colors.blue,
//               ),
//               height: 100,
//               width: double.infinity,
//               child: Column(
//                 children: [
//                   Text(usercompltlist.first.complaint),
//                   Text(usercompltlist.first.reply),
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
// import 'package:project/admin/adminfunction/replyget.dart';
// import 'package:project/customer/customerfunction/complaintget.dart';
// import 'package:project/customer/customerfunction/copltuserget.dart';

// class Custviewcomplaintsreply extends StatelessWidget {
//   const Custviewcomplaintsreply({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Complaint Replies',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: const Color(0xFF1976D2), // Deep blue AppBar
//       ),
//       body: ListView.builder(
//         itemCount: usercompltlist.length,
//         itemBuilder: (BuildContext context, int index) {
//           var complaint = usercompltlist[index]; // Get current complaint object
          
//           return Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: Colors.lightBlue.shade50, // Light blue background for complaint card
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.2),
//                     spreadRadius: 2,
//                     blurRadius: 6,
//                     offset: const Offset(2, 4), // Shadow effect for depth
//                   ),
//                 ],
//               ),
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Complaint:',
//                     style: TextStyle(
//                       color: Colors.blue.shade800,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                   const SizedBox(height: 6),
//                   Text(
//                     complaint.complaint,
//                     style: const TextStyle(fontSize: 14, color: Colors.black87),
//                   ),
//                   const Divider(
//                     height: 20,
//                     thickness: 1.5,
//                     color: Colors.blueGrey,
//                   ),
//                   Text(
//                     'Reply:',
//                     style: TextStyle(
//                       color: Colors.teal.shade700,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                   const SizedBox(height: 6),
//                   Text(
//                     complaint.reply.isEmpty ? "No reply yet" : complaint.reply,
//                     style: const TextStyle(fontSize: 14, color: Colors.black54),
//                   ),
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
// import 'package:project/admin/adminfunction/replyget.dart';
// import 'package:project/customer/customerfunction/complaintget.dart';
// import 'package:project/customer/customerfunction/copltuserget.dart';

// class Custviewcomplaintsreply extends StatelessWidget {
//   const Custviewcomplaintsreply({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Complaint Replies',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: const Color(0xFF1976D2), // Deep blue AppBar
//       ),
//       body: ListView.builder(
//         itemCount: usercompltlist.length,  // Assuming this list has complaints and replies
//         itemBuilder: (BuildContext context, int index) {
//           var complaint = usercompltlist[index]; // Get the current complaint object

//           // Check if there's a reply from the admin
//           bool hasReply = complaint.reply.isNotEmpty;

//           return Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: Colors.lightBlue.shade50, // Light blue background for complaint card
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.2),
//                     spreadRadius: 2,
//                     blurRadius: 6,
//                     offset: const Offset(2, 4), // Shadow effect for depth
//                   ),
//                 ],
//               ),
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Complaint Title and Content
//                   Text(
//                     'Complaint:',
//                     style: TextStyle(
//                       color: Colors.blue.shade800,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                   const SizedBox(height: 6),
//                   Text(
//                     complaint.complaint,
//                     style: const TextStyle(fontSize: 14, color: Colors.black87),
//                   ),
//                   const Divider(
//                     height: 20,
//                     thickness: 1.5,
//                     color: Colors.blueGrey,
//                   ),
//                   // Reply Section
//                   Text(
//                     'Reply:',
//                     style: TextStyle(
//                       color: Colors.teal.shade700,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                   const SizedBox(height: 6),
//                   // Show reply or "No reply yet"
//                   Text(
//                     hasReply ? complaint.reply : "No reply yet",
//                     style: const TextStyle(fontSize: 14, color: Colors.black54),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:project/customer/customerfunction/copltuserget.dart';

class Custviewcomplaintsreply extends StatelessWidget {
  const Custviewcomplaintsreply({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Complaint Replies',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFE6B566), // Gold AppBar
        elevation: 6,
      ),
      body: ListView.builder(
        itemCount: usercompltlist.length,  // Assuming this list has complaints and replies
        itemBuilder: (BuildContext context, int index) {
          var complaint = usercompltlist[index]; // Get the current complaint object

          // Check if there's a reply from the admin
          bool hasReply = complaint.reply.isNotEmpty;

          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                  colors: [Color(0xFFD6D6D6), Color(0xFFE6B566)], // Silver to Gold Gradient
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 3,
                    blurRadius: 8,
                    offset: const Offset(0, 4), // Shadow effect for depth
                  ),
                ],
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Complaint Icon
                  const Row(
                    children: [
                      Icon(
                        Icons.report_problem,
                        color: Color(0xFFE6B566), // Gold color for the icon
                        size: 24,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Complaint:',
                        style: TextStyle(
                          color: Color(0xFFE6B566),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    complaint.complaint,
                    style: const TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 1.5,
                    color: Colors.blueGrey,
                  ),
                  // Reply Section with Icon
                  Row(
                    children: [
                      Icon(
                        Icons.reply_all,
                        color: Colors.teal.shade700, // Teal color for the reply icon
                        size: 24,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Reply:',
                        style: TextStyle(
                          color: Colors.teal.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Show reply or "No reply yet"
                  Text(
                    hasReply ? complaint.reply : "No reply yet",
                    style: const TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  const SizedBox(height: 10),
                  // Icon-based action button to refresh or reply
                  
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
