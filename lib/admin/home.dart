// import 'package:flutter/material.dart';
// import 'package:project/admin/addjewellaray.dart';
// import 'package:project/admin/page.dart';
// import 'package:project/admin/viewcomplaints.dart';
// import 'package:project/admin/vieworderes.dart';

// import 'package:project/admin/viewpayment.dart';
// import 'package:project/customer/homepage.dart';
// ValueNotifier<int> current =ValueNotifier(0);
// class adminhome extends StatelessWidget {
//   adminhome({super.key});
// List<Widget> screen =[page(),PaymentDetails(),Viewcomplaints()];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: ValueListenableBuilder(
//         valueListenable: current,
//         builder: (context, value, child) {
//           return BottomNavigationBar(
//             items:[
//                BottomNavigationBarItem(icon: Icon(Icons.comment),label:"settings" ),
//             BottomNavigationBarItem(icon: Icon(Icons.payment),label: "Payment Details"),
//             BottomNavigationBarItem(icon: Icon(Icons.comment),label:"Complaints" ),],
//             currentIndex: current.value,
//             onTap: (value) async

//             {
//              current.value=value;
//             },
//           );
//         },
//       ),
//       body:
//       ValueListenableBuilder(
//         valueListenable: current,
//         builder: (BuildContext context, dynamic value, Widget? child) {
//           return screen[current.value];
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:project/admin/addjewellaray.dart';
// import 'package:project/admin/adminfunction/admingetprofile.dart';
// import 'package:project/admin/page.dart';
// import 'package:project/admin/viewcomplaints.dart';
// import 'package:project/admin/vieworderes.dart';
// import 'package:project/admin/viewpayment.dart';
// import 'package:project/customer/customerfunction/feedbackget.dart';
// import 'package:project/customer/customerfunction/profileget.dart';
// import 'package:project/customer/homepage.dart';

// ValueNotifier<int> current = ValueNotifier(0);

// // ignore: must_be_immutable
// class adminhome extends StatelessWidget {
//     adminhome ({super.key});

//   List<Widget> screen = [page(), PaymentDetails(), Viewcomplaints(),];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Admin Panel',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: IconButton(
//                   onPressed: ()async {
//                    await feedbackget();
//                     Navigator.pushNamed(context, "adminviewcustfeedback");
//                   },
//                   icon: Icon(Icons.feedback)),
//               title: Text('feedback'),
//               // onTap: () {
//               //   Navigator.pop(context); // Close the drawer
//               //   current.value = 0; // Navigate to Home
//               // },
//             ),
//             ListTile(
//               leading: IconButton(
//                   onPressed: () async{
//                 await   adminprofileget();
//                     Navigator.pushNamed(context, "adminviewcustomers");
//                   },
//                   icon: Icon(Icons.person)),
//               title: Text('Customer Details'),
//               // onTap: () {
//               //   Navigator.pop(context); // Close the drawer
//               //   current.value = 1; // Navigate to Payment Details
//               // },
//             ),
//             // ListTile(
//             //   leading: Icon(Icons.comment),
//             //   title: Text('Complaints'),
//             //   onTap: () {
//             //     Navigator.pop(context); // Close the drawer
//             //     current.value = 2; // Navigate to Complaints
//             //   },
//             // ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: ValueListenableBuilder(
//         valueListenable: current,
//         builder: (context, value, child) {
//           return BottomNavigationBar(
//             items: [
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.comment), label: "Settings"),
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
import 'package:project/admin/adminfunction/admingetprofile.dart';
import 'package:project/admin/page.dart';
import 'package:project/admin/viewcomplaints.dart';
import 'package:project/admin/viewpayment.dart';
import 'package:project/customer/customerfunction/feedbackget.dart';

ValueNotifier<int> current = ValueNotifier(0);

// ignore: must_be_immutable
class adminhome extends StatelessWidget {
  adminhome({super.key});

  List<Widget> screen = [
    const page(),
    const PaymentDetails(),
    const Viewcomplaints(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE6B566), // Soft gold AppBar background
        title: const Text(
          'Admin Home',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: const Color(0xFFD6D6D6), // Light grey Drawer background
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFE6B566), // Soft gold for Drawer header
                ),
                child: Text(
                  'Admin Panel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () async {
                    await feedbackget();
                    Navigator.pushNamed(context, "adminviewcustfeedback");
                  },
                  icon: const Icon(Icons.feedback, color: Color(0xFFE6B566)),
                ),
                title: const Text('Feedback',
                    style: TextStyle(
                      color: Color(0xFF3E1F47),
                    )),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () async {
                    await adminprofileget();
                    Navigator.pushNamed(context, "adminviewcustomers");
                  },
                  icon: const Icon(Icons.person, color: Color(0xFFE6B566)),
                ),
                title: const Text('Customer Details',
                    style: TextStyle(
                      color: Color(0xFF3E1F47),
                    )),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: current,
        builder: (context, value, child) {
          return BottomNavigationBar(
            backgroundColor: const Color(0xFFD6D6D6), // Light grey background for BottomNavigationBar
            selectedItemColor: const Color(0xFFE6B566), // Soft gold for selected items
            unselectedItemColor: Colors.grey[600],
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.payment), label: "Payment Details"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.comment), label: "Complaints"),
            ],
            currentIndex: current.value,
            onTap: (value) async {
              current.value = value;
            },
          );
        },
      ),
      body: ValueListenableBuilder(
        valueListenable: current,
        builder: (BuildContext context, dynamic value, Widget? child) {
          return screen[current.value];
        },
      ),
    );
  }
}
