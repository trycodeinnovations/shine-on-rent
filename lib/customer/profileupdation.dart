// import 'package:flutter/material.dart';
// import 'package:project/customer/customerfunction/profileget.dart';

// class Custprofileupdation extends StatelessWidget {
//    Custprofileupdation({super.key});
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Text("PROFILE UPDATION"),
           
           
//             SizedBox(height: 10,),
//             Container( height: 46,
//               width: 400,
//               decoration: BoxDecoration(border: Border.all(),  borderRadius: BorderRadius.circular(8)),
//               child: Center(child: Text(custprofilelist.first.name)),
//               ),
//               SizedBox(height: 10,),
            
//             Container( height: 46,
//               width: 400,
//               decoration: BoxDecoration(border: Border.all(),  borderRadius: BorderRadius.circular(8)),
//               child: Center(child: Text(custprofilelist.first.email)),
//               ),
//               SizedBox(height: 10,),
//             Container( height: 46,
//               width: 400,
//               decoration: BoxDecoration(border: Border.all(),  borderRadius: BorderRadius.circular(8)),
//               child: Center(child: Text(custprofilelist.first.phone)),
//               ),
//               SizedBox(height: 10,),
//             Container( height: 46,
//               width: 400,
//               decoration: BoxDecoration(border: Border.all(),  borderRadius: BorderRadius.circular(8)),
//               child: Center(child: Text(custprofilelist.first.address)),
//               ),
//               SizedBox(height: 10,),
//             Container( height: 46,
//               width: 400,
//               decoration: BoxDecoration(border: Border.all(),  borderRadius: BorderRadius.circular(8)),
//               child: Center(child: Text(custprofilelist.first.landmark)),
//               ),
//               SizedBox(height: 10,),
//             Container( height: 46,
//               width: 400,
//               decoration: BoxDecoration(border: Border.all(),  borderRadius: BorderRadius.circular(8)),
//               child: Center(child: Text(custprofilelist.first.district)),
//               ),SizedBox(height: 10,),
//               ElevatedButton(onPressed: () {
                
//               }, child: Text("EDIT"))
//           ],
//         ),
//       )
//     );
//   }
// }
























import 'package:flutter/material.dart';
import 'package:project/customer/customerfunction/profileget.dart';

class Custprofileupdation extends StatelessWidget {
  const Custprofileupdation({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: const Color(0xFFE6B566), // Gold theme color
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black87, fontSize: 16),
          bodyMedium: TextStyle(color: Colors.black54, fontSize: 14),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF4CAF50), // Green button
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFE6B566), // Gold color for AppBar
          title: const Text(
            "Profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              _buildProfileField("Name", custprofilelist.first.name, Icons.person),
              const SizedBox(height: 10),
              _buildProfileField("Email", custprofilelist.first.email, Icons.email),
              const SizedBox(height: 10),
              _buildProfileField("Phone", custprofilelist.first.phone, Icons.phone),
              const SizedBox(height: 10),
              _buildProfileField("Address", custprofilelist.first.address, Icons.home),
              const SizedBox(height: 10),
              _buildProfileField("Landmark", custprofilelist.first.landmark, Icons.location_on),
              const SizedBox(height: 10),
              _buildProfileField("District", custprofilelist.first.district, Icons.location_city),
              const SizedBox(height: 30),
              const Center(
                // child: ElevatedButton.icon(
                //   onPressed: () {
                //     // Add functionality to edit profile
                //   },
                //   icon: const Icon(Icons.edit, color: Colors.white),
                //   label: const Text("Edit Profile"),
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Color(0xFFE6B566), // Gold color for button
                //     padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //     elevation: 8,
                //   ),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable method to build profile fields with icons
  Widget _buildProfileField(String label, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE6B566)), // Gold border
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFD6D6D6), // Light gray background color
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFE6B566), size: 24), // Gold icon
          const SizedBox(width: 10),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey[800],
              fontSize: 16,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
