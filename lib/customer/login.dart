// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/loginfunction.dart';

// class Customerlogin extends StatelessWidget {
//   Customerlogin({super.key});
  
//   TextEditingController usernamecontroller = TextEditingController();
//   TextEditingController passwordcontroller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/jewe18.jpg'),fit: BoxFit.fill)),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Center(
//             child: Center(
//               child: Container(
//                 height: 400,
//                 width: 400,
//                 child: Column(
//                   children: [
//                     Text(
//                       "Hi Welcome",
//                       style: TextStyle(fontSize: 28,
//                           color: Color.fromARGB(121, 247, 246, 250),
//                           fontWeight: FontWeight.bold,),
//                     ),
//                     SizedBox(height: 18),
//                     TextFormField(style: TextStyle(color: Colors.white),
//                       decoration: InputDecoration(hintStyle: TextStyle(color: Colors.white),
//                           hintText: "UserName",
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(7))),
//                       controller: usernamecontroller,
//                     ),
//                     SizedBox(height: 18),
//                     TextFormField(style: TextStyle(color: Colors.white),
//                       decoration: InputDecoration(hintStyle: TextStyle(color: Colors.white),
//                           hintText: "Password",
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(7))),
//                       controller: passwordcontroller,
//                     ),
//                     SizedBox(height: 18),
//                     ElevatedButton(
//                         onPressed: ()async {
//                           Map<String,dynamic> data={
//                     'email':usernamecontroller.text,
//                     'password':passwordcontroller.text,
                    
//                   };
//                         await   login(usernamecontroller.text,passwordcontroller.text , context);
//                           // Navigator.pushNamed(context, "custhome");
                          
//                         },
//                         child: Text("Login")),
//                     SizedBox(height: 18),
//                     TextButton(onPressed: () {
//                       Navigator.pushNamed(context, "custforgotpassword");
//                     }, child: Text("Forgot Password ?",style: TextStyle(color: Colors.white),),),
//                     SizedBox(
//                       height: 18,
//                     ),
//                     ElevatedButton(
//                         onPressed: () {
//                           Navigator.pushNamed(context, "custregistration");
//                         },
//                         child: Text("Register Now"))
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }






// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/loginfunction.dart';

// class Customerlogin extends StatelessWidget {
//   Customerlogin({super.key});
  
//   TextEditingController usernamecontroller = TextEditingController();
//   TextEditingController passwordcontroller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Wedding-themed background image
//       body: Container(
//         // decoration: BoxDecoration(
//         //   image: DecorationImage(
//         //     image: AssetImage('assets/images/.jpg'), // Add the downloaded background image here
//         //     fit: BoxFit.cover,
//         //     colorFilter: ColorFilter.mode(
//         //       Colors.black.withOpacity(0.4), 
//         //       BlendMode.darken
//         //     ),
//         //   ),
//         // ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Center(
//             child: Container(
//               padding: EdgeInsets.all(16),
//               height: 450,
//               width: 350,
//               decoration: BoxDecoration(
//                 color: Colors.white.withOpacity(0.8), // Semi-transparent background
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.2),
//                     blurRadius: 10,
//                     spreadRadius: 2,
//                   ),
//                 ],
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Expanded(
//                   //   child: IconButton(onPressed: () {
//                   //     Navigator.pushNamed(context, 'public');
//                   //   }, icon: Icon(Icons.public)),
//                   // ),
//                   // Welcome Text
//                   Text(
//                     "Hi, Welcome",
//                     style: TextStyle(
//                       fontSize: 28,
//                       color: const Color.fromARGB(255, 224, 205, 26),
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Cursive',
//                     ),
//                   ),
//                   SizedBox(height: 20),
                  
//                   // Username TextFormField
//                   TextFormField(
//                     style: TextStyle(color: Colors.black),
//                     decoration: InputDecoration(
//                       hintText: "Username",
//                       hintStyle: TextStyle(color: Colors.grey),
//                       filled: true,
//                       fillColor: Colors.white,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(color: const Color.fromARGB(255, 224, 205, 26), width: 2),
//                       ),
//                     ),
//                     controller: usernamecontroller,
//                   ),
//                   SizedBox(height: 18),

//                   // Password TextFormField
//                   TextFormField(
//                     obscureText: true,
//                     style: TextStyle(color: Colors.black),
//                     decoration: InputDecoration(
//                       hintText: "Password",
//                       hintStyle: TextStyle(color: Colors.grey),
//                       filled: true,
//                       fillColor: Colors.white,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(color: const Color.fromARGB(255, 224, 205, 26), width: 2),
//                       ),
//                     ),
//                     controller: passwordcontroller,
//                   ),
//                   SizedBox(height: 18),

//                   // Login Button
//                   ElevatedButton(
//                     onPressed: () async {
//                       Map<String, dynamic> data = {
//                         'email': usernamecontroller.text,
//                         'password': passwordcontroller.text,
//                       };
//                       await login(usernamecontroller.text, passwordcontroller.text, context);
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color.fromARGB(255, 224, 205, 26), // Wedding-themed button color
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     child: Text("Login", style: TextStyle(color: Colors.white)),
//                   ),
//                   SizedBox(height: 18),

//                   // Forgot Password Button
//                   // TextButton(
//                   //   onPressed: () {
//                   //     Navigator.pushNamed(context, "custforgotpassword");
//                   //   },
//                   //   child: Text(
//                   //     "Forgot Password?",
//                   //     style: TextStyle(color: const Color.fromARGB(255, 224, 205, 26)),
//                   //   ),
//                   // ),
//                   SizedBox(height: 18),

//                   // Register Button
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, "custregistration");
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color.fromARGB(255, 224, 205, 26), // Wedding-themed color
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     child: Text("Register Now", style: TextStyle(color: Colors.white)),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:project/admin/adminfunction/loginfunction.dart';

import 'package:project/customer/mainhome.dart';

class Customerlogin extends StatelessWidget {
  Customerlogin({super.key});
  
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(image: DecorationImage(
            image: AssetImage("assets/images/pick.jpg"), // Background image for the app
            fit: BoxFit.cover),
          gradient: LinearGradient(
            colors: [ Color(0xFFE6B566),  Color(0xFFD6D6D6)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 500,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    spreadRadius: 3,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.gem,
                    color:const Color(0xFFE6B566),
                    size: 50,
                  ),
                  const SizedBox(height: 10),
                  Icon(Icons.diamond,color: const Color(0xFFE6B566),size:MediaQuery.of(context).size.width*0.1,),

                  const Text(
                    "Hi, Welcome",
                    style: TextStyle(
                      fontSize: 28,
                      color: Color(0xFFE6B566),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cursive',
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Username TextFormField
                  TextFormField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      hintText: "Username",
                      hintStyle: const TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color:Color(0xFFE6B566),
                          width: 2,
                        ),
                      ),
                    ),
                    controller: usernamecontroller,
                  ),
                  const SizedBox(height: 18),

                  // Password TextFormField
                  TextFormField(
                    obscureText: true,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xFFE6B566),
                          width: 2,
                        ),
                      ),
                    ),
                    controller: passwordcontroller,
                  ),
                  const SizedBox(height: 18),

                  // Login Button
                  ElevatedButton(
                    onPressed: () async {
                      Map<String, dynamic> data = {
                        'email': usernamecontroller.text,
                        'password': passwordcontroller.text,
                      };
                      await login(usernamecontroller.text, passwordcontroller.text, context);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: const Color(0xFFE6B566),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadowColor: Colors.black54,
                      elevation: 8,
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),

                  // Register Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "custregistration");
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      backgroundColor: const Color(0xFFE6B566),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadowColor: Colors.black54,
                      elevation: 8,
                    ),
                    child: const Text(
                      "Register Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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




// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/loginfunction.dart';

// class Customerlogin extends StatefulWidget {
//   @override
//   _CustomerloginState createState() => _CustomerloginState();
// }

// class _CustomerloginState extends State<Customerlogin>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;

//   TextEditingController usernamecontroller = TextEditingController();
//   TextEditingController passwordcontroller = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       duration: const Duration(seconds: 4),
//       vsync: this,
//     )..repeat(reverse: true);
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background gradient
//           Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xFFE6B566), Color(0xFFD6D6D6)],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//               ),
//             ),
//           ),

//           // Moving Diamonds Animation
//           Positioned.fill(
//             child: AnimatedBuilder(
//               animation: _animationController,
//               builder: (context, child) {
//                 return Stack(
//                   children: [
//                     _buildMovingDiamond(50, 0.2, 0.4, 0.8),
//                     _buildMovingDiamond(100, 0.8, 0.1, 0.6),
//                     _buildMovingDiamond(150, 0.4, 0.7, 0.9),
//                   ],
//                 );
//               },
//             ),
//           ),

//           // Login Form
//           Center(
//             child: Container(
//               height: 500,
//               width: 350,
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.white.withOpacity(0.9),
//                 borderRadius: BorderRadius.circular(25),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.2),
//                     blurRadius: 10,
//                     offset: const Offset(0, 5),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Icon(
//                     Icons.diamond,
//                     color: Color(0xFFE6B566),
//                     size: 50,
//                   ),
//                   const SizedBox(height: 10),
//                   const Text(
//                     "Hi, Welcome",
//                     style: TextStyle(
//                       fontSize: 28,
//                       color: Color(0xFFE6B566),
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Cursive',
//                     ),
//                   ),
//                   const SizedBox(height: 20),

//                   // Username TextField
//                   TextFormField(
//                     controller: usernamecontroller,
//                     style: const TextStyle(color: Colors.black),
//                     decoration: InputDecoration(
//                       prefixIcon: const Icon(Icons.person, color: Colors.grey),
//                       hintText: "Username",
//                       hintStyle: const TextStyle(color: Colors.grey),
//                       filled: true,
//                       fillColor: const Color(0xFFF9F3EC),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 18),

//                   // Password TextField
//                   TextFormField(
//                     controller: passwordcontroller,
//                     obscureText: true,
//                     style: const TextStyle(color: Colors.black),
//                     decoration: InputDecoration(
//                       prefixIcon: const Icon(Icons.lock, color: Colors.grey),
//                       hintText: "Password",
//                       hintStyle: const TextStyle(color: Colors.grey),
//                       filled: true,
//                       fillColor: const Color(0xFFF9F3EC),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),

//                   // Login Button
//                   ElevatedButton(
//                     onPressed: () async {
//                       await login(usernamecontroller.text,
//                           passwordcontroller.text, context);
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFFE6B566),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 50, vertical: 15),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       elevation: 8,
//                     ),
//                     child: const Text(
//                       "Login",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 18),

//                   // Register Button
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, "custregistration");
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFFFADCD9),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 50, vertical: 15),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       elevation: 8,
//                     ),
//                     child: const Text(
//                       "Register Now",
//                       style: TextStyle(
//                         color: Color(0xFFE6B566),
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Method to build moving diamond
//   Widget _buildMovingDiamond(double size, double x, double y, double speed) {
//     double offsetX = x * MediaQuery.of(context).size.width +
//         sin(_animationController.value * 2 * pi * speed) * 50;
//     double offsetY = y * MediaQuery.of(context).size.height +
//         cos(_animationController.value * 2 * pi * speed) * 50;

//     return Positioned(
//       left: offsetX,
//       top: offsetY,
//       child: Icon(
//         Icons.diamond,
//         color: Color(0xFFE6B566),
//         size: size,
//       ),
//     );
//   }
// }
