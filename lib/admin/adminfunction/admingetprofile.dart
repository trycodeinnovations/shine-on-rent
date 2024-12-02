import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:project/admin/adminmodel/viewprofilemodel.dart';
List<viewprofilemodel> Custlist=[];

Future adminprofileget() async{
 print('hhhhhhhhhhhhfgfh');
try {
   var update = FirebaseFirestore.instance.collection("customer");
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs.length);
    print('fgfh');
     Custlist = querySnapshot.docs.map((doc) {
      return viewprofilemodel(

        
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
   Custlist=Custlist;


print(Custlist.length);


  
} catch (e) {

  print(e);
  
}

}