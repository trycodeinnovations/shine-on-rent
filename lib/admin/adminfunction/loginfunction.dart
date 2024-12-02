import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/admin/adminfunction/adminorderget.dart';
import 'package:project/admin/adminfunction/paymentget.dart';
import 'package:project/admin/home.dart';
import 'package:project/customer/customerfunction/complaintget.dart';
import 'package:project/customer/homepage.dart';
String? customerid;
Future login(email, password, context) async {
  FirebaseAuth auther = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  try {
    UserCredential user = await auther.signInWithEmailAndPassword(
        email: email, password: password);
    if (user.user != null) {
      if (email == "admin@gmail.com") {
        
        // artistgetfun();
        // customergetfun();
       await compltget();
      await  paymentget();
      await adminorderget();
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => adminhome(),
            ));
      } else  {
        QuerySnapshot<Map<String, dynamic>> artistDoc = await firestore
            .collection('customer')
            .where('email', isEqualTo: email)
            .get();
        print(artistDoc.docs);
        // print()
        if (artistDoc.docs.isNotEmpty) {
          print("Document exists");
          customerid=artistDoc.docs.first.id;
          // var fieldValue = artistDoc.get('fieldname');  // Replace 'fieldname' with the actual field name
          // print(fieldValue);
          // await jeweget();
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => Homepage()));
              print("success");
        } else {
          print("Document does not exist");
        }
       
//         else{
//            DocumentSnapshot customerDoc = await firestore.collection('customers').doc(user.user!.uid).get();
//             if (customerDoc.exists) {
// //             // Validate the password
//             if (customerDoc['password'] == password) {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => Userhomescreen()),
//               );

//         }
//         else{
//           print("Incorrect password for customer");
//         }

//       }
//       else{ print("User does not belong to any role");}
//       }}
      }
      
      
      //  print("success");
    } else {
      print("failed");
    }
  } catch (e) {
    print(e);
  }
}


