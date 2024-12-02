import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/customer/model/profilemodel.dart';
List<Profilemodel> custprofilelist=[];

Future custprofileget() async{
var email =FirebaseAuth.instance.currentUser!.email;
try {
   var update = FirebaseFirestore.instance.collection("customer").where('email',isEqualTo: email);
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs.length);
     custprofilelist = querySnapshot.docs.map((doc) {
      return Profilemodel(

        
          id: doc.id,
          landmark:doc['landmark']??'',
          
          name: doc['name']??'',
          phone: doc['phone']??'',
          email: doc['email']??'',
          district:doc['district']??'',
          pin: doc['pin']??'',
          address: doc['address']??'',
          image: doc['idproof']??'',
          
          
        );
    }).toList();
   custprofilelist=custprofilelist;


print(custprofilelist.length);


  
} catch (e) {

  print(e);
  
}

}