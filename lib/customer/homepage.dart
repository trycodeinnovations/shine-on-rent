// import 'package:flutter/material.dart';
// import 'package:project/customer/complaints.dart';
// import 'package:project/customer/custhome.dart';
// import 'package:project/customer/customerfunction/custorderget.dart';
// import 'package:project/customer/customerfunction/profileget.dart';
// import 'package:project/customer/customervieworder.dart';
// import 'package:project/customer/jewellaryitems.dart';
// import 'package:project/customer/login.dart';

// import 'package:project/customer/makepayment.dart';
// import 'package:project/customer/payment.dart';
// import 'package:project/customer/viewpaymentdetails.dart';

// ValueNotifier<int> current = ValueNotifier(0);

// class Homepage extends StatelessWidget {
//   Homepage({super.key});
//   List<Widget> screen = [
//     Customerhome(),
//     Custviewpaymentdetails(),
//     Complaints(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(actions: [
//         IconButton(onPressed: () {
//           Navigator.pushNamed(context, "customerfeedback");
//         }, icon: Icon(Icons.reviews))
//       ],),
//       drawer: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Drawer(
          
//           elevation: 20,
//           width: 200,
//           shadowColor: Colors.green,
//           child: Center(
//             child: Column(
//               children: [
//                 Text("Contanct Us"),
//                 Text("8744878888"),
//                 IconButton(onPressed: () {
//                   Navigator.pushNamed(context, "custlogin");
//                 }, icon: Icon(Icons.logout)),
                
//                 Row(
//                   children: [
//                     IconButton(onPressed: ()async {
//                     await  custprofileget();
//                     Navigator.pushNamed(context, "custprofileupdation");
//                     }, icon: Icon(Icons.person)),
//                     Text("View Profile"),
                    
                    
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.list_alt),
        
//         onPressed: () async{
//         await  orderget();
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => Custvieworder(),
//             ),
//           );
//         },
//       ),
//       bottomNavigationBar: ValueListenableBuilder(
//         valueListenable: current,
//         builder: (context, value, child) {
//           return BottomNavigationBar(
//             items: [
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.payment), label: "Jewellary items"),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.payment), label: "Payment Details"),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.comment), label: "Complaints"),
//             ],
//             currentIndex: current.value,
//             onTap: (value) async {
//               current.value = value;
//             },
//           );
//         },
//       ),
//       body: ValueListenableBuilder(
//         valueListenable: current,
//         builder: (BuildContext context, dynamic value, Widget? child) {
//           return screen[current.value];
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:project/customer/complaints.dart';
// import 'package:project/customer/custhome.dart';
// import 'package:project/customer/customerfunction/custorderget.dart';
// import 'package:project/customer/customerfunction/profileget.dart';
// import 'package:project/customer/customervieworder.dart';
// import 'package:project/customer/jewellaryitems.dart';
// import 'package:project/customer/login.dart';

// import 'package:project/customer/makepayment.dart';
// import 'package:project/customer/payment.dart';
// import 'package:project/customer/viewpaymentdetails.dart';

// ValueNotifier<int> current = ValueNotifier(0);

// class Homepage extends StatelessWidget {
//   Homepage({super.key});
//   List<Widget> screen = [
//     Customerhome(),
//     Custviewpaymentdetails(),
//     Complaints(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.pushNamed(context, "customerfeedback");
//             },
//             icon: Icon(Icons.reviews),
//           )
//         ],
//       ),
//       drawer: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Drawer(
//           elevation: 20,
//           width: 250,
//           shadowColor: Colors.green,
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.green,
//                 ),
//                 child: Text(
//                   'Customer Menu',
//                   style: TextStyle(color: Colors.white, fontSize: 24),
//                 ),
//               ),
//               ListTile(
//                 leading: Icon(Icons.contact_phone),
//                 title: Text("Contact Us"),
//                 subtitle: Text("8744878888"),
//               ),
//               Divider(),
//               ListTile(
//                 leading: Icon(Icons.logout),
//                 title: Text("Logout"),
//                 onTap: () {
//                   Navigator.pushNamed(context, "custlogin");
//                 },
//               ),
//               Divider(),
//               ListTile(
//                 leading: Icon(Icons.person),
//                 title: Text("View Profile"),
//                 onTap: () async {
//                   await custprofileget();
//                   Navigator.pushNamed(context, "custprofileupdation");
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.list_alt),
//         onPressed: () async {
//           await orderget();
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => Custvieworder(),
//             ),
//           );
//         },
//       ),
//       bottomNavigationBar: ValueListenableBuilder(
//         valueListenable: current,
//         builder: (context, value, child) {
//           return BottomNavigationBar(
//             items: [
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.payment), label: "Jewellary items"),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.payment), label: "Payment Details"),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.comment), label: "Complaints"),
//             ],
//             currentIndex: current.value,
//             onTap: (value) async {
//               current.value = value;
//             },
//           );
//         },
//       ),
//       body: ValueListenableBuilder(
//         valueListenable: current,
//         builder: (BuildContext context, dynamic value, Widget? child) {
//           return screen[current.value];
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:project/customer/complaints.dart';
import 'package:project/customer/custhome.dart';
import 'package:project/customer/customerfunction/custorderget.dart';
import 'package:project/customer/customerfunction/profileget.dart';
import 'package:project/customer/customervieworder.dart';
import 'package:project/customer/viewpaymentdetails.dart';

ValueNotifier<int> current = ValueNotifier(0);

class Homepage extends StatelessWidget {
  Homepage({super.key});
  List<Widget> screen = [
    const Customerhome(),
    const Custviewpaymentdetails(),
    Complaints(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE6B566), // Updated gold tone for AppBar
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "customerfeedback");
            },
            icon: const Icon(Icons.reviews, color: Colors.white),
          ),
        ],
      ),
      drawer: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(
          elevation: 20,
          width: 250,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFE6B566), Color(0xFFD6D6D6)], // Updated gradient matching Customerhome
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFE6B566), Color(0xFFD6D6D6)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Text(
                    'Customer Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                const ListTile(
                  leading: Icon(Icons.contact_phone, color:Colors.white),
                  title: Text("Contact Us", style: TextStyle(color: Colors.black)),
                  subtitle: Text("8744878888"),
                ),
                const Divider(color: Color(0xFFD6D6D6)),
                ListTile(
                  leading: const Icon(Icons.logout, color:Colors.white),
                  title: const Text("Logout", style: TextStyle(color: Colors.black)),
                  onTap: () {
                    Navigator.pushNamed(context, "custlogin");
                  },
                ),
                const Divider(color: Color(0xFFD6D6D6)),
                ListTile(
                  leading: const Icon(Icons.person, color:Colors.white),
                  title: const Text("View Profile", style: TextStyle(color: Colors.black)),
                  onTap: () async {
                    await custprofileget();
                    Navigator.pushNamed(context, "custprofileupdation");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFE6B566), // Gold for luxury
        child: const Icon(Icons.list_alt, color: Colors.white),
        onPressed: () async {
          await orderget();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Custvieworder(),
            ),
          );
        },
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: current,
        builder: (context, value, child) {
          return BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.accessibility_new, color: value == 0 ? const Color(0xFFE6B566) : const Color(0xFFD6D6D6)),
                label: "Jewelry Items",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.payment, color: value == 1 ? const Color(0xFFE6B566) : const Color(0xFFD6D6D6)),
                label: "Payment Details",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.comment, color: value == 2 ? const Color(0xFFE6B566) : const Color(0xFFD6D6D6)),
                label: "Complaints",
              ),
            ],
            currentIndex: current.value,
            onTap: (value) async {
              current.value = value;
            },
            backgroundColor: const Color.fromARGB(223, 155, 154, 154), // Dark background for contrast
            selectedItemColor: const Color(0xFFE6B566), // Gold for selected item
            unselectedItemColor: const Color(0xFFE6B566), // Silver for unselected
          );
        },
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFD6D6D6), Color(0xFFE6B566)], // Silver to gold gradient
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ValueListenableBuilder(
          valueListenable: current,
          builder: (BuildContext context, dynamic value, Widget? child) {
            return screen[current.value];
          },
        ),
      ),
    );
  }
}
