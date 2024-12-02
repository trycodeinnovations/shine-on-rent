import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/customer/model/odermodel.dart';

Future orderget() async {
  try {print("fgjhh");
    String? email= FirebaseAuth.instance.currentUser!.email;
    var update = FirebaseFirestore.instance.collection('order').where ('userid',isEqualTo: email);
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    
    orderdata = querySnapshot.docs.map((doc) {
      return Ordermodel(
        
        
          id: doc.id ,
          jewename:doc['productname'] ,
          actualprice: doc['actualprice']?? '',
          rentprice: doc['rentprice']??'',
          image: doc['image']??'',
          category: doc['category']??'',
          userid: doc['userid']??'',
         
          );
       
    }).toList();
   
    print(orderdata[0].image);
    print("ghh");
  } catch (e) {
    print(e);
  }
}

List<Ordermodel> orderdata = [];

