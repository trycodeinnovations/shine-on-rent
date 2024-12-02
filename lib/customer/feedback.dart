// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/loginfunction.dart';
// import 'package:project/customer/customerfunction/feedbackfun.dart';

// class Custfeedback extends StatelessWidget {
//    Custfeedback({super.key});
// TextEditingController feedbackController =TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Text("FEEDBACK"),
//             SizedBox(height: 18,),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 controller: feedbackController,
//                 decoration: InputDecoration(hintStyle:TextStyle(),labelText: "Feddback"),),
//             ),
//             SizedBox(height: 18,),
//             ElevatedButton(onPressed: () {
//               Map<String,dynamic> data={
//                 'feedback':feedbackController.text,
//                 'id':customerid,
                
                
//               };
//               Navigator.pushNamed(context, "custhomee");
//              feedbackfun(data);
              
//             }, child: Text("Submit"))
//           ],
//         ),
//       )
//     );
//   }
// }

    

//     import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/loginfunction.dart';
// import 'package:project/customer/customerfunction/feedbackfun.dart';

// class Custfeedback extends StatelessWidget {
//   Custfeedback({super.key});
//   TextEditingController feedbackController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       data: ThemeData(
//         primaryColor: const Color(0xFF1976D2), // Blue primary color
//         hintColor: const Color(0xFF4CAF50), // Green for accents
//         scaffoldBackgroundColor: const Color(0xFFF5F5F5), // Light background
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: const Color(0xFF4CAF50), // Green button color
//             padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
//             textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//         ),
//         inputDecorationTheme: InputDecorationTheme(
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(12),
//             borderSide: const BorderSide(color: Color(0xFF1976D2)), // Blue border
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(12),
//             borderSide: const BorderSide(color: Color(0xFF4CAF50), width: 2), // Green focus border
//           ),
//           labelStyle: const TextStyle(color: Color(0xFF1976D2)), // Blue label color
//         ),
//       ),
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             'Feedback',
//             style: TextStyle(color: Colors.white),
//           ),
//           backgroundColor: const Color(0xFF1976D2), // Blue AppBar color
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               const Text(
//                 "FEEDBACK",
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF1976D2), // Blue for title
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 24),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   controller: feedbackController,
//                   decoration: const InputDecoration(
//                     labelText: "Your Feedback",
//                     labelStyle: TextStyle(fontSize: 16),
//                   ),
//                   maxLines: 4,
//                 ),
//               ),
//               const SizedBox(height: 24),
//               ElevatedButton(
//                 onPressed: () {
//                   Map<String, dynamic> data = {
//                     'feedback': feedbackController.text,
//                     'id': customerid,
//                   };
//                   Navigator.pushNamed(context, "custhome");
//                   feedbackfun(data);
//                 },
//                 child: const Text("Submit"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }









import 'package:flutter/material.dart';
import 'package:project/admin/adminfunction/loginfunction.dart';
import 'package:project/customer/customerfunction/feedbackfun.dart';

class Custfeedback extends StatelessWidget {
  Custfeedback({super.key});
  TextEditingController feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: const Color(0xFF1976D2), // Blue primary color
        hintColor: const Color(0xFF4CAF50), // Green for accents
        scaffoldBackgroundColor: const Color(0xFFD6D6D6), // Soft background for contrast
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFE6B566), // Gold color for buttons
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), // Rounded button
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white, // Input fields with white background
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE6B566)), // Gold border
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF1976D2), width: 2), // Blue focus border
          ),
          labelStyle: const TextStyle(color: Color(0xFF1976D2)), // Blue label color
          hintStyle: const TextStyle(color: Color(0xFF4CAF50)), // Green hint text
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
         
          backgroundColor:  const Color(0xFFD6D6D6), // Blue AppBar color
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Title Section with a bold and modern look
              const Text(
                "We Value Your Feedback",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE6B566), // Gold for title
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Input Text Field with a nice icon for the placeholder
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: feedbackController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.feedback, color: Color(0xFFE6B566)), // Feedback icon
                    labelText: "Your Feedback",
                    labelStyle: TextStyle(fontSize: 16),
                    hintText: "Enter your thoughts here...",
                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 24),

              // Action Button styled to stand out with a subtle hover effect
              ElevatedButton(
                onPressed: () {
                  Map<String, dynamic> data = {
                    'feedback': feedbackController.text,
                    'id': customerid,
                  };
                  Navigator.pushNamed(context, "custhome");
                  feedbackfun(data);
                },
                child: const Text("Submit"),
              ),
              const SizedBox(height: 20),

              // Adding some spacing for the footer
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info, color: Color(0xFF1976D2), size: 20),
                  SizedBox(width: 8),
                  Text(
                    "We appreciate your time!",
                    style: TextStyle(color: Color(0xFF1976D2), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
