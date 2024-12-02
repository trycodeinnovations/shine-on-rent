import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/admin/adminfunction/loginfunction.dart';
import 'package:project/customer/model/usercompltrpymodel.dart';

Future usercompltget(context) async {
  var email =FirebaseAuth.instance.currentUser!.email;
  try {
    // String? email= FirebaseAuth.instance.currentUser!.email;
    var update = FirebaseFirestore.instance.collection('complaint').where('id',isEqualTo: customerid);
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    usercompltlist = querySnapshot.docs.map((doc) {
      return usercompltrplymodel(
          id: doc.id ,
          complaint: doc['complaint']?? '',
         
          reply:doc['reply']??'',
          );
      
    }).toList();
     Navigator.pushNamed(context, "custviewcomplaintsreply");
    print(usercompltlist[0].complaint);
    print(usercompltlist[0].reply);
  } catch (e) {
    print(e);
  }
}

List<usercompltrplymodel> usercompltlist = [];