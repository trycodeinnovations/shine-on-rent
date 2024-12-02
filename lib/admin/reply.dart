// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/replyfun.dart';
// import 'package:project/customer/customerfunction/complaintget.dart';

// class Reply extends StatelessWidget {
//    Reply({super.key});
// TextEditingController replycontroller=TextEditingController();

//   get data => null;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Submit Your Reply',
//               style: TextStyle(color: Color.fromARGB(255, 4, 27, 158))
//             ),
//             SizedBox(height: 16),
//             TextField(
//               controller: replycontroller,
//               decoration: InputDecoration(
//                 labelText: 'Your Reply',
//                 border: OutlineInputBorder(),
//               ),
//               maxLines: 5,
//             ),
//             SizedBox(height: 16),
            
            
//             ElevatedButton(
//               onPressed: () async{
//                 Map<String,dynamic> data={
//                 'reply':replycontroller.text,
                
                
//               };
//                 replyfun(complaintdata.first.id,data);
//                await compltget();
                
//                 Navigator.pushNamed(context, "adminhome");

//                 // Handle form submission
//               },
//               child: Text('Submit'),
//             ),
//              SizedBox(height: 16),
           
//           ],
//         ),
//       ),
//     );
//   }
// }




























import 'package:flutter/material.dart';
import 'package:project/admin/adminfunction/replyfun.dart';
import 'package:project/customer/customerfunction/complaintget.dart';

class Reply extends StatelessWidget {
  Reply({super.key});

  TextEditingController replyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reply to Complaint"),
        backgroundColor: const Color(0xFFE6B566), // Using your custom color for the AppBar
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE6B566), Color(0xFFD6D6D6)], // Gradient background
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // Rounded corners for the card
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Submit Your Reply',
                    style: TextStyle(
                      color: Colors.blueGrey[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextField(
                    controller: replyController,
                    decoration: InputDecoration(
                      labelText: 'Your Reply',
                      labelStyle: TextStyle(
                        color: Colors.blueGrey[700],
                      ),
                      hintText: 'Enter your reply here...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.lightBlue),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    maxLines: 5,
                    style: TextStyle(color: Colors.blueGrey[800]),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () async {
                      Map<String, dynamic> data = {
                        'reply': replyController.text,
                      };

                      replyfun(complaintdata.first.id, data); // Send the reply
                      await compltget(); // Refresh the complaint list

                      Navigator.pushNamed(context, "adminhome"); // Navigate to the admin home page
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE6B566), // Custom color for button
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/replyfun.dart';
// import 'package:project/customer/customerfunction/complaintget.dart';

// class Reply extends StatelessWidget {
//   Reply({super.key});

//   TextEditingController replyController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
        
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Submit Your Reply',
//               style: TextStyle(
//                 color: Colors.blueGrey[800],
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//               ),
//             ),
//             SizedBox(height: 24),
//             TextField(
//               controller: replyController,
//               decoration: InputDecoration(
//                 labelText: 'Your Reply',
//                 labelStyle: TextStyle(
//                   color: Colors.blueGrey[700],
//                 ),
//                 hintText: 'Enter your reply here...',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: BorderSide(color: Colors.lightBlue),
//                 ),
//                 filled: true,
//                 fillColor: Colors.white,
//               ),
//               maxLines: 5,
//               style: TextStyle(color: Colors.blueGrey[800]),
//             ),
//             SizedBox(height: 24),
//             ElevatedButton(
//               onPressed: () async {
//                 Map<String, dynamic> data = {
//                   'reply': replyController.text,
//                 };

//                 replyfun(complaintdata.first.id, data); // Send the reply
//                 await compltget(); // Refresh the complaint list

//                 Navigator.pushNamed(context, "adminhome"); // Navigate to the admin home page
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.lightBlue[400],
//                 padding: EdgeInsets.symmetric(vertical: 14),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//               child: Text(
//                 'Submit',
//                 style: TextStyle(fontSize: 16, color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
