import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/customer/model/paymentmodel.dart';

Future paymentget() async {
  try {
    // String? email= FirebaseAuth.instance.currentUser!.email;
    var update = FirebaseFirestore.instance.collection('payment');
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    paymentdata = querySnapshot.docs.map((doc) {
      return Paymentmodel(
       
          id: doc.id ,
          
          
          
          jewename: doc['jewename']?? '',
         userid: doc['userid']?? '',
          rentprice: doc['rentprice']??'',
          image: doc['image']??'',
          category:doc['category']??'',
            custname:doc['custname']??'',
          
          );
       
    }).toList();

    print(paymentdata[0].image);
  } catch (e) {
    print(e);
  }
}

List<Paymentmodel> paymentdata = [];