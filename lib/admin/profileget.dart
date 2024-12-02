
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:project/admin/adminmodel/jewellarymodel.dart';

// Future Profileget(email) async {
//   try {
//     // String? email= FirebaseAuth.instance.currentUser!.email;
//     var update = FirebaseFirestore.instance.collection('canteen').where('email',isEqualTo: email);
//     QuerySnapshot querySnapshot = await update.get();
//     print(querySnapshot.docs);
//     jewellerydata = querySnapshot.docs.map((doc) {
//       return Jewellarymodel(
//           id: doc.id ,
//           name: doc['name']?? '',
//           age: doc['age']?? '',
//           post: doc['post']?? '',
//           place: doc['place']?? '',
//           email: doc['email']?? '',
//           image: doc['image']??'',
//           district: doc['district']??'',
//           );
      
//     }).toList();
//     // canteendata=employeedata;
//     print(jewellerydata[0].email);
//   } catch (e) {
//     print(e);
//   }
// }

// List<Jewellarymodel> jewellerydata = [];