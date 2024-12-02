import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/admin/adminmodel/adminviewjewemodel.dart';

Future adminvjeweget(category) async {
  try {
    // String? email= FirebaseAuth.instance.currentUser!.email;
    var update = FirebaseFirestore.instance.collection('jewellaryitems');
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    adminviewjewedata = querySnapshot.docs.map((doc) {
      return Adminviewjewemodel(
        
       
          id: doc.id ,
         
          
          jewename: doc['jewename']?? '',
          image: doc['select image']??'',
          quantity: doc['quantity']??'',
          available:   doc['available']??'',
          actualprice:   doc['actualprice']??'',
          rentprice:  doc['rentprice']??'',
          category:doc['category']??'',
          );
       
    }).toList();
   print(adminviewjewedata.length);
    print(adminviewjewedata[0].image);
  } catch (e) {
    print(e);
  }
}

List<Adminviewjewemodel> adminviewjewedata = [];