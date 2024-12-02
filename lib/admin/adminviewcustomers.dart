// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/admingetprofile.dart';
// import 'package:project/customer/customerfunction/profileget.dart';

// class Viewcustomers extends StatelessWidget {
//   const Viewcustomers({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//         child: ListView.builder(
//           itemCount: Custlist.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color.fromARGB(255, 109, 167, 235),),
//                 height: 100,
//                 width: double.infinity,
                
               
//                       child: Column(
//                         children: [
                         
//                           Text(Custlist[index].name),
//                           Text(Custlist[index].address),
//                           Text(Custlist[index].phone),
//                           Text(Custlist[index].landmark),
                          

                         
                          
                        
//                         ],
                      
//                       ),
                    
                  
                
              
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:project/admin/adminfunction/admingetprofile.dart';

class Viewcustomers extends StatelessWidget {
  const Viewcustomers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer List"),
        backgroundColor: const Color(0xFFE6B566),
        elevation: 5,
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
          itemCount: Custlist.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildCustomerInfoRow(
                        "Name: ",
                        Custlist[index].name,
                        icon: Icons.person_outline,
                      ),
                      const SizedBox(height: 8),
                      _buildCustomerInfoRow(
                        "Address: ",
                        Custlist[index].address,
                        icon: Icons.location_on,
                      ),
                      const SizedBox(height: 8),
                      _buildCustomerInfoRow(
                        "Phone: ",
                        Custlist[index].phone,
                        icon: Icons.phone_android,
                      ),
                      const SizedBox(height: 8),
                      _buildCustomerInfoRow(
                        "Landmark: ",
                        Custlist[index].landmark,
                        icon: Icons.place,
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

  // Method to create a row for displaying customer info with an icon
  Widget _buildCustomerInfoRow(String label, String value, {required IconData icon}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: const Color(0xFFE6B566),
          size: 20,
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFE6B566),
            fontSize: 16,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              color: Colors.blueGrey[600],
              fontSize: 16,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
