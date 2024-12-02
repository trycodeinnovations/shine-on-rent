
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/admin/adminmodel/jewellarymodel.dart';

Future jeweget(category) async {
  try {
    // String? email= FirebaseAuth.instance.currentUser!.email;
    var update = FirebaseFirestore.instance.collection('jewellaryitems').where('category',isEqualTo: category);
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    jewellarydata = querySnapshot.docs.map((doc) {
      return Jewellarymodel(
       
          id: doc.id ,
          actualprice: doc['actualprice']?? '',
          cautiondeposit: doc['cautiondeposit']?? '',
          
          jewename: doc['jewename']?? '',
          quantity: doc['quantity']?? '',
          rentprice: doc['rentprice']??'',
          image: doc['select image']??'',
          category:doc['category']??'',
           available:doc['available']??'',
          
          );
       
    }).toList();

    print(jewellarydata[0].image);
  } catch (e) {
    print(e);
  }
}

List<Jewellarymodel> jewellarydata = [];