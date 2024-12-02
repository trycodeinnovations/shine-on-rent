import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/customer/model/odermodel.dart';

Future adminorderget() async {
  try {
    // String? email= FirebaseAuth.instance.currentUser!.email;
    var update = FirebaseFirestore.instance.collection('order');
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    adminorderlist = querySnapshot.docs.map((doc) {
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
   
    print(adminorderlist[0].image);
  } catch (e) {
    print(e);
  }
}

List<Ordermodel> adminorderlist = [];