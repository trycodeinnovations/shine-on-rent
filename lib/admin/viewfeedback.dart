// import 'package:flutter/material.dart';
// import 'package:project/customer/customerfunction/feedbackget.dart';

// class Viewfeedback extends StatelessWidget {
//   const Viewfeedback({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: ListView.builder(
//         itemCount: feedbackdata.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(border: Border.all(),
//                   ),
//                   height: 100,
//                   width: double.infinity,
//                   child: Column(
//                     children: [
//                       Text(feedbackdata[index].feedback),
//                        Text(feedbackdata[index].custid)
//                     ],
//                   ),),
                 
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:project/customer/customerfunction/feedbackget.dart';

// class Viewfeedback extends StatelessWidget {
//   const Viewfeedback({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Customer Feedback"),
//         // backgroundColor: Colors.lightBlue[300],
//       ),
//       body: Container(
//         // decoration: BoxDecoration(
//         //   gradient: LinearGradient(
//         //     colors: [Colors.lightBlue[100]!, Colors.lightBlue[50]!],
//         //     begin: Alignment.topCenter,
//         //     end: Alignment.bottomCenter,
//         //   ),
//         // ),
//         padding: EdgeInsets.all(8.0),
//         child: ListView.builder(
//           itemCount: feedbackdata.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(12),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 6,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Feedback:",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blueGrey[700],
//                           fontSize: 16,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         feedbackdata[index].feedback,
//                         style: TextStyle(
//                           color: Colors.blueGrey[600],
//                           fontSize: 15,
//                         ),
//                       ),
//                       SizedBox(height: 12),
//                       Text(
//                         "Customer ID: ${feedbackdata[index].custid}",
//                         style: TextStyle(
//                           color: Colors.blueGrey[500],
//                           fontSize: 14,
//                           fontStyle: FontStyle.italic,
//                         ),
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
import 'package:project/customer/customerfunction/feedbackget.dart';

class Viewfeedback extends StatelessWidget {
  const Viewfeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Customer Feedback",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFE6B566),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE6B566), Color(0xFFD6D6D6)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: feedbackdata.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.feedback, color: Color(0xFFE6B566)),
                          const SizedBox(width: 8),
                          Text(
                            "Feedback",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey[800],
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        feedbackdata[index].feedback,
                        style: TextStyle(
                          color: Colors.blueGrey[600],
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          const Icon(Icons.person, color: Color(0xFFE6B566)),
                          const SizedBox(width: 8),
                          Text(
                            "Customer ID: ${feedbackdata[index].custid}",
                            style: TextStyle(
                              color: Colors.blueGrey[500],
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
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
      ),
    );
  }
}
