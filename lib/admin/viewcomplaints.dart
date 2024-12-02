// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/replyget.dart';
// import 'package:project/customer/customerfunction/complaintget.dart';
// import 'package:project/customer/customerfunction/copltuserget.dart';

// class Viewcomplaints extends StatelessWidget {
//   const Viewcomplaints({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: complaintdata.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Card(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: Colors.blue,
//                     ),
//                     height: 100,
//                     width: double.infinity,
//                     child: Row(
//                       children: [
//                         Expanded(child: Center(child:
//                          Text(complaintdata[index].complaint),)),
//                         Text(complaintdata[index].userid),
                        
//                         TextButton(
//                             onPressed: () {
//                               Navigator.pushNamed(context, "adminreply");
//                             },
//                             child: Text("Reply")),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
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

// class Viewcomplaints extends StatelessWidget {
//   const Viewcomplaints({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: Container(
        
//         padding: EdgeInsets.all(8.0),
//         child: ListView.builder(
//           itemCount: complaintdata.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//               child: Card(
//                 elevation: 4,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Container(
//                   padding: EdgeInsets.all(16),
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [Colors.blue[100]!, Colors.blue[50]!],
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                     ),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           // Expanded(
//                           //   child: Text(
//                           //     "Complaint:",
//                           //     style: TextStyle(
//                           //       fontWeight: FontWeight.bold,
//                           //       fontSize: 16,
//                           //       color: const Color.fromARGB(255, 5, 102, 151),
//                           //     ),
//                           //   ),
//                           // ),
//                           // Icon(
//                           //   Icons.error_outline,
//                           //   color: Colors.redAccent,
//                           //   size: 20,
//                           // ),
//                         ],
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         complaintdata[index].complaint,
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.blueGrey[600],
//                         ),
//                       ),
//                       SizedBox(height: 16),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "User ID: ${complaintdata[index].userid}",
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.blueGrey[500],
//                             ),
//                           ),
//                           ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.lightBlue[300],
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                             ),
//                             onPressed: () {
//                               Navigator.pushNamed(context, "adminreply");
//                             },
//                             child: Text(
//                               "Reply",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ],
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

// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/replyget.dart';
// import 'package:project/customer/customerfunction/complaintget.dart';
// import 'package:project/customer/customerfunction/copltuserget.dart';

// class Viewcomplaints extends StatefulWidget {
//   const Viewcomplaints({super.key});

//   @override
//   _ViewcomplaintsState createState() => _ViewcomplaintsState();
// }

// class _ViewcomplaintsState extends State<Viewcomplaints> {
//   // Map to store replies for each complaint by ID
//   final Map<int, String> complaintReplies = {};

//   // Function to add a reply
//   void addReply(int complaintId, String replyText) {
//     setState(() {
//       complaintReplies[complaintId] = replyText; // Store reply with complaint ID
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.all(8.0),
//         child: ListView.builder(
//           itemCount: complaintdata.length,
//           itemBuilder: (BuildContext context, int index) {
//             final complaint = complaintdata[index];
//             return Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//               child: Card(
//                 elevation: 4,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Container(
//                   padding: const EdgeInsets.all(16),
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [Colors.blue[100]!, Colors.blue[50]!],
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                     ),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         complaint.complaint,
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.blueGrey[600],
//                         ),
//                       ),
//                       const SizedBox(height: 16),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "User ID: ${complaint.userid}",
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.blueGrey[500],
//                             ),
//                           ),
//                           ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.lightBlue[300],
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                             ),
//                             onPressed: () {
//                               Navigator.pushNamed(
//                                 context,
//                                 "adminreply",
//                                 arguments: complaint.id, // Pass complaint ID
//                               ).then((replyText) {
//                                 // Check if replyText is a non-null String
//                                 if (replyText is String) {
//                                   addReply(complaint.id as int, replyText); // Save reply
//                                 }
//                               });
//                             },
//                             child: const Text(
//                               "Reply",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: 8),
//                       // Display the reply for this complaint if it exists
//                       if (complaintReplies.containsKey(complaint.id))
//                         Text(
//                           "Reply: ${complaintReplies[complaint.id]}",
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.green[700],
//                           ),
//                         ),
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
import 'package:project/customer/customerfunction/complaintget.dart';

class Viewcomplaints extends StatefulWidget {
  const Viewcomplaints({super.key});

  @override
  _ViewcomplaintsState createState() => _ViewcomplaintsState();
}

class _ViewcomplaintsState extends State<Viewcomplaints> {
  // Map to store replies for each complaint by ID
  final Map<int, String> complaintReplies = {};

  // Function to add a reply
  void addReply(int complaintId, String replyText) {
    setState(() {
      complaintReplies[complaintId] = replyText; // Store reply with complaint ID
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE6B566), Color(0xFFD6D6D6)], // Gradient for background
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          itemCount: complaintdata.length,
          itemBuilder: (BuildContext context, int index) {
            final complaint = complaintdata[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Card(
                elevation: 10, // Increased elevation for better depth effect
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16), // More rounded corners
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue[100]!, Colors.blue[50]!],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        complaint.complaint,
                        style: TextStyle(
                          fontSize: 16, // Increased font size for better readability
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey[700], // Darker color for better contrast
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Divider(  // Divider between sections
                        color: Color(0xFFE6B566),
                        thickness: 1,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "User ID: ${complaint.userid}",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey[500],
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFE6B566), // Custom button color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                "adminreply",
                                arguments: complaint.id, // Pass complaint ID
                              ).then((replyText) {
                                // Check if replyText is a non-null String
                                if (replyText is String) {
                                  addReply(complaint.id as int, replyText); // Save reply
                                }
                              });
                            },
                            child: const Text(
                              "Reply",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      // Display the reply for this complaint if it exists
                      if (complaintReplies.containsKey(complaint.id))
                        Text(
                          "Reply: ${complaintReplies[complaint.id]}",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.green[700],
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
