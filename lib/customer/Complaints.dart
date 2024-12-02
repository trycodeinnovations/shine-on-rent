// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/loginfunction.dart';
// import 'package:project/customer/customerfunction/complaintfun.dart';
// import 'package:project/customer/customerfunction/complaintget.dart';
// import 'package:project/customer/customerfunction/copltuserget.dart';

// class Complaints extends StatelessWidget {
//    Complaints({super.key});
// TextEditingController Complaintcontroller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text('Submit Your Complaints',
//                 style: TextStyle(color: Color.fromARGB(255, 4, 27, 158))),
//             SizedBox(height: 16),
//             TextField(
//               controller:Complaintcontroller ,
//               decoration: InputDecoration(
//                 labelText: 'Your Complaints',
//                 border: OutlineInputBorder(),
//               ),
//               maxLines: 5,
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
                
//                 Map<String,dynamic> data={
//                 'complaint':Complaintcontroller.text,
//                 'id':customerid,
//                 'reply':''
                
//               };
              
//              complaintfun(data);
//              Navigator.pushNamed(context,'jewwllaryitem' );
//               },
            
//               child: Text('Submit'),
//             ),
//             SizedBox(height: 16),
//             TextButton(
//                 onPressed: () {
//                   usercompltget(context);
                 
//                 },
//                 child: Text("View Replys")),
//           ],
//         ),
//       ),
//     );
//   }
// }





























import 'package:flutter/material.dart';
import 'package:project/admin/adminfunction/loginfunction.dart';
import 'package:project/customer/customerfunction/complaintfun.dart';
import 'package:project/customer/customerfunction/copltuserget.dart';

class Complaints extends StatelessWidget {
  Complaints({super.key});
  TextEditingController Complaintcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: const Color(0xFFE6B566), // Gold primary color
        hintColor: const Color(0xFFD6D6D6),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFE6B566), // Gold button color
            padding: const EdgeInsets.symmetric(vertical: 16),
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFFE6B566),
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFD6D6D6)), // Silver border
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE6B566), width: 2),
          ),
          labelStyle: const TextStyle(color: Color(0xFFD6D6D6)),
        ),
      ),
      child: Scaffold(
        backgroundColor: const Color(0xFFD6D6D6), // Soft silver background color
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.report_problem, color: Color(0xFFE6B566), size: 30),
                  SizedBox(width: 8),
                  Text(
                    'Submit Your Complaints',
                    style: TextStyle(
                      color: Color(0xFFE6B566),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextField(
                controller: Complaintcontroller,
                decoration: const InputDecoration(
                  labelText: 'Your Complaint',
                  prefixIcon: Icon(Icons.edit, color: Color(0xFFE6B566)),
                  filled: true,
                  fillColor: Colors.white,
                ),
                maxLines: 5,
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                icon: const Icon(Icons.send, color: Colors.white),
                label: const Text('Submit'),
                onPressed: () {
                  Map<String, dynamic> data = {
                    'complaint': Complaintcontroller.text,
                    'id': customerid,
                    'reply': ''
                  };

                  complaintfun(data);
                  Navigator.pushNamed(context, 'custhome');
                },
              ),
              const SizedBox(height: 16),
              TextButton.icon(
                icon: const Icon(Icons.message, color: Color(0xFFE6B566)),
                label: const Text("View Replies"),
                onPressed: () {
                  usercompltget(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
