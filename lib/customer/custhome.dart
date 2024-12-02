

// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';

// class Customerhome extends StatelessWidget {
//   const Customerhome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var mediaqry = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         // decoration: BoxDecoration(
//         //   gradient: LinearGradient(
//         //     colors: [
//         //       Color(0xFFe0eafc),
//         //       Color(0xFFcfdef3), ]
//         //       , // Soft gradient background to improve aesthetics
//         //     begin: Alignment.topCenter,
//         //     end: Alignment.bottomCenter,
//         //   ),
//         // ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Center(
//             child: Container(
//               child: Column(
//                 children: [
//                   Center(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 color: Colors.blue,
//                                 image: DecorationImage(
//                                   image: AssetImage('assets/images/wedding.jpg'),
//                                   fit: BoxFit.cover,
//                                 ),
//                                 borderRadius: BorderRadius.circular(16),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black12,
//                                     blurRadius: 10,
//                                     spreadRadius: 5,
//                                   ),
//                                 ],
//                               ),
//                               height: 218,
//                               child: TextButton(
//                                 onPressed: () async {
//                                   jewellarydata.clear();
//                                   await jeweget('Wedding');
//                                   Navigator.pushNamed(context, "jewwllaryitem");
//                                 },
//                                 style: TextButton.styleFrom(
//                                   padding: EdgeInsets.zero,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(16),
//                                   ),
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     "WEDDING",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20,
//                                       shadows: [
//                                         Shadow(
//                                           blurRadius: 10.0,
//                                           color: Colors.black45,
//                                           offset: Offset(2, 2),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 10),
//                           Expanded(
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 color: Colors.blue,
//                                 image: DecorationImage(
//                                   image: AssetImage('assets/images/jew7.jpg'),
//                                   fit: BoxFit.cover,
//                                 ),
//                                 borderRadius: BorderRadius.circular(16),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black12,
//                                     blurRadius: 10,
//                                     spreadRadius: 5,
//                                   ),
//                                 ],
//                               ),
//                               height: 218,
//                               child: TextButton(
//                                 onPressed: () async {
//                                   jewellarydata.clear();
//                                   await jeweget('Engagement');
//                                   Navigator.pushNamed(context, "jewwllaryitem");
//                                 },
//                                 style: TextButton.styleFrom(
//                                   padding: EdgeInsets.zero,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(16),
//                                   ),
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     "ENGAGEMENT",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20,
//                                       shadows: [
//                                         Shadow(
//                                           blurRadius: 10.0,
//                                           color: Colors.black45,
//                                           offset: Offset(2, 2),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.blue,
//                       image: DecorationImage(
//                         image: AssetImage('assets/images/haldi4.jpg'),
//                         fit: BoxFit.cover,
//                       ),
//                       borderRadius: BorderRadius.circular(16),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black12,
//                           blurRadius: 10,
//                           spreadRadius: 5,
//                         ),
//                       ],
//                     ),
//                     height: 218,
//                     width: mediaqry.width - 20, // Full width minus padding
//                     child: TextButton(
//                       onPressed: () async {
//                         jewellarydata.clear();
//                         await jeweget('Haldi');
//                         Navigator.pushNamed(context, "jewwllaryitem");
//                       },
//                       style: TextButton.styleFrom(
//                         padding: EdgeInsets.zero,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(16),
//                         ),
//                       ),
//                       child: Center(
//                         child: Text(
//                           "HALDI",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                             shadows: [
//                               Shadow(
//                                 blurRadius: 10.0,
//                                 color: Colors.black45,
//                                 offset: Offset(2, 2),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';

// class Customerhome extends StatelessWidget {
//   const Customerhome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var mediaqry=MediaQuery.of(context).size;
//     return Scaffold(
     
//       body: 
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Center(
//                 child: Container(
//                   child: Column(
//                     children: [
//                       Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Container(decoration: BoxDecoration(color: Colors.blue,
//                                       image: DecorationImage(
//                                           image: AssetImage('assets/images/wedding.jpg'),
//                                           fit: BoxFit.cover),borderRadius: BorderRadius.circular(8)),
//                                 height: 218,
//                             width: mediaqry.width/2-21,
//                                 // color: Colors.blue,
//                                 child: TextButton(onPressed: ()async {
//                                   jewellarydata.clear();
//                                   await jeweget('Wedding');
//                                   Navigator.pushNamed(context, "jewwllaryitem");
//                                 }, child: Text("WEDDING",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)))
//                               ),
//                               SizedBox(width: 10,),
//                           Container(decoration: BoxDecoration(color: Colors.blue,
//                                       image: DecorationImage(
//                                           image: AssetImage('assets/images/jew7.jpg'),
//                                           fit: BoxFit.cover),borderRadius: BorderRadius.circular(8)),
//                             height: 218,
//                             width: mediaqry.width/2-21,
                            
//                             child:TextButton(onPressed: () async{
//                               jewellarydata.clear();
//                                   await jeweget('Engagement');
//                               Navigator.pushNamed(context, "jewwllaryitem");
//                             }, child: Text("ENGAGMENT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))) 
//                           ),
//                             ],
//                           ),
//                         ),
//                       ),
                      
//                       SizedBox(height: 10,),
//                       Container(decoration: BoxDecoration(color: Colors.blue,
//                   image: DecorationImage(
//                       image: AssetImage('assets/images/haldi4.jpg'),
//                       fit: BoxFit.cover),borderRadius: BorderRadius.circular(8)),
//                        height: 218,
//                             width: mediaqry.width/2,
                        
//                         child: TextButton(onPressed: () async{
//                           jewellarydata.clear();
//                                   await jeweget('Haldi');
//                           Navigator.pushNamed(context, "jewwllaryitem");
//                         }, child: Text("HALDI",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)))
//                       ),
//                       SizedBox(height: 10,),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
          
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';

// class Customerhome extends StatelessWidget {
//   const Customerhome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var mediaqry = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color(0xFFE6B566), // Deeper gold
//               Color(0xFFD6D6D6), // Deeper silver
//             ],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Center(
//             child: Column(
//               children: [
//                 const SizedBox(height: 40),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.star, color: Color(0xFFFFD700), size: 30),
//                     const SizedBox(width: 8),
//                     Text(
//                       "Jewelry Rental",
//                       style: TextStyle(
//                         foreground: Paint()
//                           ..shader = LinearGradient(
//                             colors: [Color(0xFFC0C0C0), Color(0xFFFFD700)],
//                           ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
//                         fontSize: 28,
//                         fontWeight: FontWeight.bold,
//                         letterSpacing: 1.2,
//                         fontFamily: 'Serif',
//                         shadows: [
//                           Shadow(
//                             color: Colors.black26,
//                             blurRadius: 5.0,
//                             offset: Offset(2, 2),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(width: 8),
//                     Icon(Icons.star, color: Color(0xFFFFD700), size: 30),
//                   ],
//                 ),
//                 const SizedBox(height: 5),
//                 const Divider(
//                   color: Color(0xFFD4AF37), // Deep gold divider
//                   thickness: 2,
//                   endIndent: 100,
//                   indent: 100,
//                 ),
//                 const SizedBox(height: 10),
//                 Text(
//                   "Select Jewelry for Your Special Occasion",
//                   style: TextStyle(
//                     color: Color(0xFF8B8000), // A darker goldenrod color
//                     fontSize: 16,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 // Wedding and Engagement Row
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     _buildCategoryButton(
//                       context,
//                       "WEDDING",
//                       "assets/images/WZo6WEH.jpeg",
//                       Color(0xFFC0C0C0), // Gold for wedding
//                       "Wedding",
//                     ),
//                     const SizedBox(width: 10),
//                     _buildCategoryButton(
//                       context,
//                       "ENGAGEMENT",
//                       "assets/images/hi.jpeg",
//                       Color(0xFFC0C0C0), // Silver for engagement
//                       "Engagement",
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),
//                 // Haldi Button
//                 _buildCategoryButton(
//                   context,
//                   "HALDI",
//                   "assets/images/ghghggg.jpg",
//                   Color(0xFFFFD700), // Gold for Haldi
//                   "Haldi",
//                   isFullWidth: true,
//                   mediaWidth: mediaqry.width,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildCategoryButton(
//     BuildContext context,
//     String title,
//     String imagePath,
//     Color iconColor,
//     String category, {
//     bool isFullWidth = false,
//     double? mediaWidth,
//   }) {
//     return Expanded(
//       child: GestureDetector(
//         onTap: () async {
//           jewellarydata.clear();
//           await jeweget(category);
//           Navigator.pushNamed(context, "jewwllaryitem");
//         },
//         child: MouseRegion(
//           onEnter: (_) {
//             // Add hover effect logic if needed
//           },
//           child: AnimatedContainer(
//             duration: const Duration(milliseconds: 300),
//             height: 220,
//             width: isFullWidth ? (mediaWidth! - 20) : null,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               image: DecorationImage(
//                 image: AssetImage(imagePath),
//                 fit: BoxFit.cover,
//                 colorFilter: ColorFilter.mode(
//                   Colors.black.withOpacity(0.3),
//                   BlendMode.darken,
//                 ),
//               ),
//               borderRadius: BorderRadius.circular(16),
//               border: Border.all(
//                 color: Color(0xFFD4AF37), // Deep gold for the border
//                 width: 2,
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black45, // Deeper shadow
//                   blurRadius: 15,
//                   spreadRadius: 8,
//                   offset: Offset(4, 6),
//                 ),
//               ],
//             ),
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.star,
//                     color: iconColor,
//                     size: 40,
//                   ),
//                   const SizedBox(height: 5),
//                   Text(
//                     title,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 24,
//                       shadows: [
//                         Shadow(
//                           blurRadius: 12.0,
//                           color: Colors.black54,
//                           offset: Offset(2, 2),
//                         ),
//                       ],
//                     ),
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
// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';

// class Customerhome extends StatelessWidget {
//   const Customerhome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var mediaqry = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color(0xFFE6B566), // Deeper gold
//               Color(0xFFD6D6D6), // Deeper silver
//             ],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Column(
//               children: [
//                 const SizedBox(height: 40),
//                 _buildHeader(),
//                 const SizedBox(height: 10),
//                 _buildCarousel(),
//                 const SizedBox(height: 20),
//                 _buildCategorySection(context, mediaqry),
//                 const SizedBox(height: 30),
//                 _buildFeaturedCollections(context),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildHeader() {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.star, color: Color(0xFFFFD700), size: 30),
//             const SizedBox(width: 8),
//             Text(
//               "Jewelry Rental",
//               style: TextStyle(
//                 foreground: Paint()
//                   ..shader = LinearGradient(
//                     colors: [Color(0xFFC0C0C0), Color(0xFFFFD700)],
//                   ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 1.2,
//                 fontFamily: 'Serif',
//                 shadows: [
//                   Shadow(
//                     color: Colors.black26,
//                     blurRadius: 5.0,
//                     offset: Offset(2, 2),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(width: 8),
//             Icon(Icons.star, color: Color(0xFFFFD700), size: 30),
//           ],
//         ),
//         const SizedBox(height: 5),
//         const Divider(
//           color: Color(0xFFD4AF37), // Deep gold divider
//           thickness: 2,
//           endIndent: 100,
//           indent: 100,
//         ),
//         const SizedBox(height: 10),
//         Text(
//           "Select Jewelry for Your Special Occasion",
//           style: TextStyle(
//             color: Color(0xFF8B8000), // A darker goldenrod color
//             fontSize: 16,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildCarousel() {
//     final images = [
//       "assets/images/sokara.jpg",
//       "assets/images/sokara1.jpg",
//       "assets/images/sokara2.jpg",
//       "assets/images/sokara3.jpg",
//       "assets/images/sokara4.jpg",
//       "assets/images/sokara5.jpg",
//       "assets/images/sokara6.jpg",
//       "assets/images/sokara7.jpg",
//       "assets/images/sokara8.jpg",
//     ];

//     return SizedBox(
//       height: 200,
//       child: PageView.builder(
//         itemCount: images.length,
//         itemBuilder: (context, index) {
//           return Container(
//             margin: const EdgeInsets.symmetric(horizontal: 8.0),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               image: DecorationImage(
//                 image: AssetImage(images[index]),
//                 fit: BoxFit.cover,
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black26,
//                   blurRadius: 10,
//                   spreadRadius: 2,
//                   offset: Offset(4, 4),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildCategorySection(BuildContext context, Size mediaqry) {
//     return Column(
      
//       children: [
//         Text("Category",style: TextStyle(
//                 foreground: Paint()
//                   ..shader = LinearGradient(
//                     colors: [Color(0xFFC0C0C0), Color(0xFFFFD700)],
//                   ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 1.2,
//                 fontFamily: 'Serif',
//                 shadows: [
//                   Shadow(
//                     color: Colors.black26,
//                     blurRadius: 5.0,
//                     offset: Offset(2, 2),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10,),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
            
//             _buildCategoryButton(
//               context,
//               "Wedding",
//               "assets/images/WZo6WEH.jpeg",
//               Color(0xFFC0C0C0),
//               "Wedding",
//             ),
//             const SizedBox(width: 10),
//             _buildCategoryButton(
//               context,
//               "Engagement",
//               "assets/images/hi.jpeg",
//               Color(0xFFC0C0C0),
//               "Engagement",
//             ),
//           ],
//         ),
//         const SizedBox(height: 20),
//         _buildCategoryButton(
//           context,
//           "Haldi",
//           "assets/images/ghghggg.jpg",
//           Color(0xFFFFD700),
//           "Haldi",
//           isFullWidth: true,
//           mediaWidth: mediaqry.width,
//         ),
//       ],
//     );
//   }

//   Widget _buildFeaturedCollections(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "Featured Collections",
//           style: TextStyle(
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//             color: Color(0xFF8B8000),
//           ),
//         ),
//         const SizedBox(height: 10),
//         GridView.builder(
//           physics: const NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//             childAspectRatio: 0.9,
//           ),
//           itemCount: 4,
//           itemBuilder: (context, index) {
//             final imagePath = "assets/images/sokara${index + 1}.jpg";
//             return GestureDetector(
//               onTap: () {
//                 // Optionally add functionality to navigate to the details of the featured item
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(16),
//                   image: DecorationImage(
//                     image: AssetImage(imagePath),
//                     fit: BoxFit.cover,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black26,
//                       blurRadius: 10,
//                       offset: Offset(3, 3),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildCategoryButton(
//     BuildContext context,
//     String title,
//     String imagePath,
//     Color iconColor,
//     String category, {
//     bool isFullWidth = false,
//     double? mediaWidth,
//   }) {
//     return GestureDetector(
//       onTap: () async {
//         jewellarydata.clear();
//         await jeweget(category);
//         Navigator.pushNamed(context, "jewwllaryitem");
//       },
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 300),
//         height: 220,
//         width: isFullWidth ? (mediaWidth! - 20) : 150,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           image: DecorationImage(
//             image: AssetImage(imagePath),
//             fit: BoxFit.cover,
//             colorFilter: ColorFilter.mode(
//               Colors.black.withOpacity(0.3),
//               BlendMode.darken,
//             ),
//           ),
//           borderRadius: BorderRadius.circular(16),
//           border: Border.all(
//             color: Color(0xFFD4AF37), // Deep gold for the border
//             width: 2,
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black45, // Deeper shadow
//               blurRadius: 15,
//               spreadRadius: 8,
//               offset: Offset(4, 6),
//             ),
//           ],
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.star,
//                 color: iconColor,
//                 size: 40,
//               ),
//               const SizedBox(height: 5),
//               Text(
//                 title,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 24,
//                   shadows: [
//                     Shadow(
//                       blurRadius: 12.0,
//                       color: Colors.black54,
//                       offset: Offset(2, 2),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';

// class Customerhome extends StatelessWidget {
//   const Customerhome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var mediaqry = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color(0xFFE6B566), // Deeper gold
//               Color(0xFFD6D6D6), // Deeper silver
//             ],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Column(
//               children: [
//                 const SizedBox(height: 40),
//                 _buildHeader(),
//                 const SizedBox(height: 10),
//                 _buildCarousel(),
//                 const SizedBox(height: 20),
//                 _buildCategorySection(context, mediaqry),
//                 const SizedBox(height: 30),
//                 _buildFeaturedCollections(context),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildHeader() {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.star, color: Color(0xFFFFD700), size: 30),
//             const SizedBox(width: 8),
//             Text(
//               "Jewelry Rental",
//               style: TextStyle(
//                 foreground: Paint()
//                   ..shader = LinearGradient(
//                     colors: [Color(0xFFC0C0C0), Color(0xFFFFD700)],
//                   ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 1.2,
//                 fontFamily: 'Serif',
//                 shadows: [
//                   Shadow(
//                     color: Colors.black26,
//                     blurRadius: 5.0,
//                     offset: Offset(2, 2),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(width: 8),
//             Icon(Icons.star, color: Color(0xFFFFD700), size: 30),
//           ],
//         ),
//         const SizedBox(height: 5),
//         const Divider(
//           color: Color(0xFFD4AF37), // Deep gold divider
//           thickness: 2,
//           endIndent: 100,
//           indent: 100,
//         ),
//         const SizedBox(height: 10),
//         Text(
//           "Select Jewelry for Your Special Occasion",
//           style: TextStyle(
//             color: Color(0xFF8B8000), // A darker goldenrod color
//             fontSize: 16,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildCarousel() {
//     final images = [
//       "assets/images/sokara.jpg",
//       "assets/images/sokara1.jpg",
//       "assets/images/sokara2.jpg",
//       "assets/images/sokara3.jpg",
//       "assets/images/sokara4.jpg",
//       "assets/images/sokara5.jpg",
//       "assets/images/sokara6.jpg",
//       "assets/images/sokara7.jpg",
//       "assets/images/sokara8.jpg",      // Added image sokara8
//       "assets/images/sokara88.jpg",     // Added image sokara88
//       "assets/images/sokara888.jpg",    // Added image sokara888
//       "assets/images/sokara8888.jpg",   // Added image sokara8888
//     ];

//     return SizedBox(
//       height: 200,
//       child: PageView.builder(
//         itemCount: images.length,
//         itemBuilder: (context, index) {
//           return Container(
//             margin: const EdgeInsets.symmetric(horizontal: 8.0),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               image: DecorationImage(
//                 image: AssetImage(images[index]),
//                 fit: BoxFit.cover,
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black26,
//                   blurRadius: 10,
//                   spreadRadius: 2,
//                   offset: Offset(4, 4),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildCategorySection(BuildContext context, Size mediaqry) {
//     return Column(
//       children: [
//         Text(
//           "Category",
//           style: TextStyle(
//             foreground: Paint()
//               ..shader = LinearGradient(
//                 colors: [Color(0xFFC0C0C0), Color(0xFFFFD700)],
//               ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
//             fontSize: 28,
//             fontWeight: FontWeight.bold,
//             letterSpacing: 1.2,
//             fontFamily: 'Serif',
//             shadows: [
//               Shadow(
//                 color: Colors.black26,
//                 blurRadius: 5.0,
//                 offset: Offset(2, 2),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(height: 10),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _buildCategoryButton(
//               context,
//               "Wedding",
//               "assets/images/WZo6WEH.jpeg",
//               Color(0xFFC0C0C0),
//               "Wedding",
//             ),
//             const SizedBox(width: 10),
//             _buildCategoryButton(
//               context,
//               "Engagement",
//               "assets/images/hi.jpeg",
//               Color(0xFFC0C0C0),
//               "Engagement",
//             ),
//           ],
//         ),
//         const SizedBox(height: 20),
//         _buildCategoryButton(
//           context,
//           "Haldi",
//           "assets/images/ghghggg.jpg",
//           Color(0xFFFFD700),
//           "Haldi",
//           isFullWidth: true,
//           mediaWidth: mediaqry.width,
//         ),
//       ],
//     );
//   }

//   Widget _buildFeaturedCollections(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "Featured Collections",
//           style: TextStyle(
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//             color: Color(0xFF8B8000),
//           ),
//         ),
//         const SizedBox(height: 10),
//         GridView.builder(
//           physics: const NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//             childAspectRatio: 0.9,
//           ),
//           itemCount: 8,  // Now displaying 8 items
//           itemBuilder: (context, index) {
//             final imagePath = "assets/images/sokara${index + 1}.jpg";
//             return GestureDetector(
//               onTap: () {
//                 // Optionally add functionality to navigate to the details of the featured item
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(16),
//                   image: DecorationImage(
//                     image: AssetImage(imagePath),
//                     fit: BoxFit.cover,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black26,
//                       blurRadius: 10,
//                       offset: Offset(3, 3),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildCategoryButton(
//     BuildContext context,
//     String title,
//     String imagePath,
//     Color iconColor,
//     String category, {
//     bool isFullWidth = false,
//     double? mediaWidth,
//   }) {
//     return GestureDetector(
//       onTap: () async {
//         jewellarydata.clear();
//         await jeweget(category);
//         Navigator.pushNamed(context, "jewwllaryitem");
//       },
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 300),
//         height: 220,
//         width: isFullWidth ? (mediaWidth! - 20) : 150,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           image: DecorationImage(
//             image: AssetImage(imagePath),
//             fit: BoxFit.cover,
//             colorFilter: ColorFilter.mode(
//               Colors.black.withOpacity(0.3),
//               BlendMode.darken,
//             ),
//           ),
//           borderRadius: BorderRadius.circular(16),
//           border: Border.all(
//             color: Color(0xFFD4AF37), // Deep gold for the border
//             width: 2,
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black45, // Deeper shadow
//               blurRadius: 15,
//               spreadRadius: 8,
//               offset: Offset(4, 6),
//             ),
//           ],
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.star,
//                 color: iconColor,
//                 size: 40,
//               ),
//               const SizedBox(height: 5),
//               Text(
//                 title,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 24,
//                   shadows: [
//                     Shadow(
//                       blurRadius: 12.0,
//                       color: Colors.black54,
//                       offset: Offset(4.0, 4.0),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }











// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';

// class Customerhome extends StatelessWidget {
//   const Customerhome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var mediaqry = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color(0xFFE6B566), // Deeper gold
//               Color(0xFFD6D6D6), // Deeper silver
//             ],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Column(
//               children: [
//                 const SizedBox(height: 40),
//                 _buildHeader(),
//                 const SizedBox(height: 10),
//                 _buildJewelrySelectionSection(),
//                 const SizedBox(height: 20),
//                 _buildCategorySection(context, mediaqry),
//                 const SizedBox(height: 30),
//                 _buildFeaturedCollections(context),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildHeader() {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.star, color: Color(0xFFFFD700), size: 30),
//             const SizedBox(width: 8),
//             Text(
//               "Jewelry Rental",
//               style: TextStyle(
//                 foreground: Paint()
//                   ..shader = LinearGradient(
//                     colors: [Color(0xFFC0C0C0), Color(0xFFFFD700)],
//                   ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 1.2,
//                 fontFamily: 'Serif',
//                 shadows: [
//                   Shadow(
//                     color: Colors.black26,
//                     blurRadius: 5.0,
//                     offset: Offset(2, 2),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(width: 8),
//             Icon(Icons.star, color: Color(0xFFFFD700), size: 30),
//           ],
//         ),
//         const SizedBox(height: 5),
//         const Divider(
//           color: Color(0xFFD4AF37), // Deep gold divider
//           thickness: 2,
//           endIndent: 100,
//           indent: 100,
//         ),
//         const SizedBox(height: 10),
//         Text(
//           "Select Jewelry for Your Special Occasion",
//           style: TextStyle(
//             color: Color(0xFF8B8000), // A darker goldenrod color
//             fontSize: 16,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildJewelrySelectionSection() {
//     final images = [
//       "assets/images/sokara.jpg",
//       "assets/images/sokara8.jpg",
//       "assets/images/sokara88.jpg",
//       "assets/images/sokara888.jpg",
//       "assets/images/sokara8888.jpg",
//       "assets/images/sokara88888.jpg",
//     ];

//     return Column(
//       children: [
//         const SizedBox(height: 20),
//         Text(
//           "Explore Jewelry",
//           style: TextStyle(
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//             color: Color(0xFF8B8000),
//           ),
//         ),
//         const SizedBox(height: 10),
//         // Horizontal scrollable list of jewelry images
//         SizedBox(
//           height: 220, // Adjusted height for better visibility
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: images.length,
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.only(right: 12),
//                 child: GestureDetector(
//                   onTap: () {
//                     // Optionally, navigate to a detailed view of the jewelry item
//                   },
//                   child: Container(
//                     width: 180, // Fixed width for each image
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(16),
//                       image: DecorationImage(
//                         image: AssetImage(images[index]),
//                         fit: BoxFit.cover,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black26,
//                           blurRadius: 10,
//                           offset: Offset(4, 4),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildCategorySection(BuildContext context, Size mediaqry) {
//     return Column(
//       children: [
//         Text(
//           "Category",
//           style: TextStyle(
//             foreground: Paint()
//               ..shader = LinearGradient(
//                 colors: [Color(0xFFC0C0C0), Color(0xFFFFD700)],
//               ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
//             fontSize: 28,
//             fontWeight: FontWeight.bold,
//             letterSpacing: 1.2,
//             fontFamily: 'Serif',
//             shadows: [
//               Shadow(
//                 color: Colors.black26,
//                 blurRadius: 5.0,
//                 offset: Offset(2, 2),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(height: 10),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _buildCategoryButton(
//               context,
//               "Wedding",
//               "assets/images/WZo6WEH.jpeg",
//               Color(0xFFC0C0C0),
//               "Wedding",
//             ),
//             const SizedBox(width: 10),
//             _buildCategoryButton(
//               context,
//               "Engagement",
//               "assets/images/hi.jpeg",
//               Color(0xFFC0C0C0),
//               "Engagement",
//             ),
//           ],
//         ),
//         const SizedBox(height: 20),
//         _buildCategoryButton(
//           context,
//           "Haldi",
//           "assets/images/ghghggg.jpg",
//           Color(0xFFFFD700),
//           "Haldi",
//           isFullWidth: true,
//           mediaWidth: mediaqry.width,
//         ),
//       ],
//     );
//   }

//   Widget _buildFeaturedCollections(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "Bestselling Bling",
//           style: TextStyle(
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//             color: Color(0xFF8B8000),
//           ),
//         ),
//         const SizedBox(height: 10),
//         GridView.builder(
//           physics: const NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//             childAspectRatio: 0.9,
//           ),
//           itemCount: 8,  // Now displaying 8 items
//           itemBuilder: (context, index) {
//             final imagePath = "assets/images/sokara${index + 1}.jpg";
//             return GestureDetector(
//               onTap: () {
//                 // Optionally add functionality to navigate to the details of the featured item
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(16),
//                   image: DecorationImage(
//                     image: AssetImage(imagePath),
//                     fit: BoxFit.cover,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black26,
//                       blurRadius: 10,
//                       offset: Offset(3, 3),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildCategoryButton(
//     BuildContext context,
//     String title,
//     String imagePath,
//     Color iconColor,
//     String category, {
//     bool isFullWidth = false,
//     double? mediaWidth,
//   }) {
//     return GestureDetector(
//       onTap: () async {
//         jewellarydata.clear();
//         await jeweget(category);
//         Navigator.pushNamed(context, "jewwllaryitem");
//       },
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 300),
//         height: 220,
//         width: isFullWidth ? (mediaWidth! - 20) : 150,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           image: DecorationImage(
//             image: AssetImage(imagePath),
//             fit: BoxFit.cover,
//             colorFilter: ColorFilter.mode(
//               Colors.black.withOpacity(0.3),
//               BlendMode.darken,
//             ),
//           ),
//           borderRadius: BorderRadius.circular(16),
//           border: Border.all(
//             color: Color(0xFFD4AF37), // Deep gold for the border
//             width: 2,
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black45, // Deeper shadow
//               blurRadius: 15,
//               spreadRadius: 8,
//               offset: Offset(4, 6),
//             ),
//           ],
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.star,
//                 color: iconColor,
//                 size: 40,
//               ),
//               const SizedBox(height: 5),
//               Text(
//                 title,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 24,
//                   shadows: [
//                     Shadow(
//                       blurRadius: 12.0,
//                       color: Colors.black54,
//                       offset: Offset(2, 2),
//                     ),
//                   ],
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
import 'package:project/admin/adminfunction/jewellaryget.dart';

class Customerhome extends StatelessWidget {
  const Customerhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8), // Light beige background
      body: SafeArea(
        child: Column(
          children: [
            // Hero Section
            _buildHeroSection(),
            // Categories
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                children: [
                  _buildSectionTitle("Categories"),
                  const SizedBox(height: 12),
                  _buildCategoryCards(context),
                  const SizedBox(height: 20),
                  _buildSectionTitle("Explore jewelry"),
                  const SizedBox(height: 12),
                  _buildHorizontalCarousel(),
                  const SizedBox(height: 20),
                  _buildSectionTitle("Trending Items"),
                  const SizedBox(height: 12),
                  _buildTrendingGrid(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add navigation logic here (optional)
        },
        backgroundColor: const Color(0xFFD4AF37), // Gold color
        child: const Icon(Icons.shopping_cart, color: Colors.white),
      ),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/sokara.jpg"), // Use an existing asset
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: const Stack(
        children: [
          Positioned(
            bottom: 20,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to rent Jewelry",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 5,
                        color: Colors.black54,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Discover exclusive designs",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    shadows: [
                      Shadow(
                        blurRadius: 4,
                        color: Colors.black38,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color(0xFF333333),
      ),
    );
  }

  Widget _buildCategoryCards(BuildContext context) {
    final categories = [
      {"title": "Wedding", "image": "assets/images/WZo6WEH.jpeg", "category": "Wedding"},
      {"title": "Engagement", "image": "assets/images/hi.jpeg", "category": "Engagement"},
      {"title": "Haldi", "image": "assets/images/ghghggg.jpg", "category": "Haldi"},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: categories.map((category) {
        return Expanded(
          child: GestureDetector(
            onTap: () async {
              jewellarydata.clear();
              await jeweget(category["category"]!);
              Navigator.pushNamed(context, "jewwllaryitem");
            },
            child: Container(
              height: 120,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(category["image"]!),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  category["title"]!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 4,
                        color: Colors.black54,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildHorizontalCarousel() {
    final images = [
      "assets/images/sokara2.jpg",
      "assets/images/sokara6.jpg",
      "assets/images/s.jpg",
      "assets/images/sokara88.jpg",
    ];

    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
              width: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(images[index]),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTrendingGrid() {
    final items = [
      "assets/images/sokara1.jpg",
      "assets/images/sokara8.jpg",
      "assets/images/sokara4.jpg",
      "assets/images/sokara3.jpg",
      "assets/images/cute.jpg",
       "assets/images/sokara7.jpg",
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.75,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(items[index]),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(2, 4),
              ),
            ],
          ),
        );
      },
    );
  }
}
