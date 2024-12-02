// import 'package:flutter/material.dart';
// import 'package:project/admin/adminfunction/jewellaryget.dart';
// import 'package:project/customer/customerfunction/custorderget.dart';

// class Custviewpaymentdetails extends StatelessWidget {
//   const Custviewpaymentdetails({super.key});
  
//   get formattedDate => DateTime.now();
  
//   get formattedTime => TimeOfDay.now();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: orderdata.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: const Color.fromARGB(255, 118, 187, 243),
//               ),
//               height: 100,
//               width: double.infinity,
//               child: Column(
//                 children: [
//                   Text(orderdata.first.jewename),
//                   Text(orderdata.first.actualprice),
//                    Text('Date: $formattedDate'),
//                  Text('Time: $formattedTime'),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:project/customer/customerfunction/custorderget.dart';
import 'package:project/customer/model/odermodel.dart';

class Custviewpaymentdetails extends StatelessWidget {
  const Custviewpaymentdetails({super.key});

  // Future function to fetch order data
  Future<List<Ordermodel>> fetchOrderData() async {
    await orderget(); // Fetch and update orderdata
    return orderdata;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD6D6D6), // Soft silver background for elegance
      
      body: FutureBuilder<List<Ordermodel>>(
        future: fetchOrderData(), // Fetch data asynchronously
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No payment details available.'));
          } else {
            List<Ordermodel> orders = snapshot.data!;
            return ListView.builder(
              itemCount: orders.length,
              itemBuilder: (BuildContext context, int index) {
                Ordermodel order = orders[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.payments, color: Color(0xFFE6B566), size: 30), // Payment icon
                      title: Text(
                        order.jewename,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3E1F47), // Darker color for readability
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(Icons.attach_money, color: Color(0xFFE6B566), size: 20),
                              const SizedBox(width: 4),
                              Text(
                                order.actualprice,
                                style: const TextStyle(fontSize: 16, color: Colors.black87),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(Icons.calendar_today, color: Color(0xFFD6D6D6), size: 20),
                              const SizedBox(width: 4),
                              Text(
                                'Date: ${DateTime.now().toString().split(' ')[0]}', // Format as needed
                                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.access_time, color: Color(0xFFD6D6D6), size: 20),
                              const SizedBox(width: 4),
                              Text(
                                'Time: ${TimeOfDay.now().format(context)}', // Format as needed
                                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, color: Color(0xFFE6B566), size: 18),
                      contentPadding: const EdgeInsets.all(12),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
