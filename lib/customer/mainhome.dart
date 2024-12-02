// import 'package:flutter/material.dart';

// class mainhome extends StatelessWidget {
//   const mainhome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
        
//         children: [
//           Container(
//             height: 188,
//             width: 188,
//             child: TextButton(onPressed: () {
//               Navigator.pushNamed(context, "custlogin");
//             }, child: Text("Start Now")),
//           )
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// class mainhome extends StatelessWidget {
//   const mainhome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueAccent, // Add a background color
//       body: Container(decoration: BoxDecoration(image: DecorationImage(image:AssetImage("assests/images/pick.jpg"))),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Add some introductory text
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//                 child: Text(
//                   "Welcome to Our App!",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               Container(
//                 height: 188,
//                 width: 188,
//                 decoration: BoxDecoration(
//                   color: Colors.white, // Button background color
//                   borderRadius: BorderRadius.circular(16), // Rounded corners
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black26, // Shadow color
//                       blurRadius: 10, // Shadow blur effect
//                       offset: Offset(0, 5),
//                     ),
//                   ],
//                 ),
//                 child: TextButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, "custlogin");
//                   },
//                   child: Text(
//                     "Start Now",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueAccent,
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
// }
import 'package:flutter/material.dart';
// Import the font awesome icons package

class mainhome extends StatelessWidget {
  const mainhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("assets/images/pick.jpg"), // Background image for the app
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              const Color.fromARGB(255, 243, 240, 240).withOpacity(0.4), // Dark overlay for better contrast
              BlendMode.darken,
            ),
          ), 
          
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Jewelry icon
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.gem, // Jewelry icon from Font Awesome
                      color: Colors.white,
                      size: 120, // Larger icon size for emphasis
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Welcome to Our Jewelry Rental App!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Georgia', // Elegant font
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Rent the finest jewelry for every occasion.\nSparkle with elegance!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                        fontFamily: 'Georgia',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // The button to start now
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [ Color(0xFFE6B566), Color(0xFFD6D6D6)], // Vibrant gradient for the button
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "custlogin"); // Navigate to customer login page
                      },
                      child: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.arrowRight, // Right arrow icon for navigation
                            color: Colors.white,
                            size: 50, // Bigger icon for prominence
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Start Now", // Text for the button
                            style: TextStyle(
                              fontSize: 22,
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
            ],
          ),
        ),
      ),
    );
  }
}

class FontAwesomeIcons {
  static IconData? arrowRight;
  
  static IconData? gem;
}
