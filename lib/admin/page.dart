// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/adminorderget.dart';
// import 'package:project/customer/customerfunction/feedbackget.dart';

// class page extends StatelessWidget {
//   const page({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Center(
//           child: Container(
//             height: double.infinity,
//           width: double.infinity,
//             decoration: BoxDecoration(image: DecorationImage(image: AssetImage(''),fit: BoxFit.fill)),
//             child: Column(
//                mainAxisAlignment:MainAxisAlignment.center,
//               children: [
               
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Color.fromARGB(255, 5, 19, 85), ),
//                     height: 84,
//                     width: double.infinity,
                    
//                     child: TextButton(onPressed: () {
//                       Navigator.pushNamed(context, "adminaddjewellary");
//                     }, child: Text("ADD JEWELLARY ITEMS",style: TextStyle(color: Colors.white),)),
//                   ),
//                 ),
//                 SizedBox(height: 18,),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Color.fromARGB(255, 5, 19, 85), ),
//                     height: 84,
//                     width: double.infinity,
                    
//                     child: TextButton(onPressed: () {
//                       adminorderget();
//                       Navigator.pushNamed(context, "adminvieworders");
//                     }, child: Text("VIEW ORDERS",style: TextStyle(color: Colors.white),)),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
      
//     ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/adminorderget.dart';
// import 'package:project/customer/customerfunction/feedbackget.dart';

// class page extends StatelessWidget {
//   const page({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background image with a dark overlay
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("assets/images/jewelry_background.jpg"), // Background image
//                 fit: BoxFit.cover,
//                 colorFilter: ColorFilter.mode(
//                   Colors.black.withOpacity(0.4), // Slightly darker overlay
//                   BlendMode.darken,
//                 ),
//               ),
//             ),
//           ),
          
//           // Page content
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Decorative Card for Title
//                   Container(
//                     padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.7),
//                       borderRadius: BorderRadius.circular(15),
//                       border: Border.all(
//                         color: Color(0xFFFFD700), // Gold border
//                         width: 2,
//                       ),
//                     ),
//                     child: Column(
//                       children: [
//                         Icon(
//                           Icons.diamond, // Jewelry-related icon
//                           color: Colors.amber[300],
//                           size: 80,
//                         ),
//                         SizedBox(height: 10),
//                         Text(
//                           "Wedding Special Jewels",
//                           style: TextStyle(
//                             fontFamily: 'DancingScript',
//                             fontSize: 36,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             shadows: [
//                               Shadow(
//                                 blurRadius: 15.0,
//                                 color: Colors.black54,
//                                 offset: Offset(4, 4),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 8),
//                         Text(
//                           "Rent exquisite jewels for your perfect day",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: Colors.white70,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
                  
//                   SizedBox(height: 50),
                  
//                   // Animated buttons with a gold shimmer effect
//                   _buildButton(
//                     context,
//                     "ADD JEWELLERY ITEMS",
//                     "adminaddjewellary",
//                     Colors.amber,
//                     Colors.deepOrange,
//                   ),
//                   SizedBox(height: 20),
//                   _buildButton(
//                     context,
//                     "VIEW ORDERS",
//                     "adminvieworders",
//                     Colors.amber,
//                     Colors.deepOrange,
//                     isAsync: true,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Function to build buttons with shimmer effect
//   Widget _buildButton(BuildContext context, String text, String route, Color startColor, Color endColor, {bool isAsync = false}) {
//     return Container(
//       height: 80,
//       margin: const EdgeInsets.symmetric(horizontal: 20),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [startColor, endColor],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black26,
//             blurRadius: 10,
//             offset: Offset(3, 3),
//           ),
//         ],
//       ),
//       child: InkWell(
//         onTap: () async {
//           if (isAsync) await adminorderget();
//           Navigator.pushNamed(context, route);
//         },
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.arrow_forward, color: Colors.white, size: 24),
//               SizedBox(width: 8),
//               Text(
//                 text,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 1.5,
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
import 'package:project/admin/adminfunction/adminorderget.dart';

class page extends StatelessWidget {
  const page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image with soft gold overlay
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/pick.jpg"), // Background image
                fit: BoxFit.cover,
                
              ),
            ),
          ),
          
          // Page content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Decorative Card for Title
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8), // Semi-transparent white
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color(0xFFE6B566), // Soft gold border
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.diamond, // Jewelry-related icon
                          color: Color(0xFFE6B566), // Soft gold for icon
                          size: 80,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Wedding Special Jewels",
                          style: TextStyle(
                            fontFamily: 'DancingScript',
                            fontSize: 36,
                            color: Color(0xFF3E1F47),
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                blurRadius: 15.0,
                                color: Colors.black26,
                                offset: Offset(4, 4),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Rent exquisite jewels for your perfect day",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 50), 
                  
                  // Soft gold and grey-themed buttons with white text
                  _buildButton(
                    context,
                    "ADD JEWELRY ITEMS",
                    "adminaddjewellary",
                    const Color(0xFFE6B566), // Soft gold start color
                    const Color(0xFFD6D6D6), // Light grey end color
                  ),
                  const SizedBox(height: 20),
                  _buildButton(
                    context,
                    "VIEW ORDERS",
                    "adminvieworders",
                    const Color(0xFFE6B566), // Soft gold start color
                    const Color(0xFFD6D6D6), // Light grey end color
                    isAsync: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Function to build buttons with soft gold and grey gradient
  Widget _buildButton(BuildContext context, String text, String route, Color startColor, Color endColor, {bool isAsync = false}) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: InkWell(
        onTap: () async {
          if (isAsync) await adminorderget();
          Navigator.pushNamed(context, route);
        },
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.arrow_forward, color: Colors.white, size: 24),
              const SizedBox(width: 8),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
