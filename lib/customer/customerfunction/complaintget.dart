import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/customer/model/complaintmodel.dart';

Future compltget() async {
  try {
    // String? email= FirebaseAuth.instance.currentUser!.email;
    var update = FirebaseFirestore.instance.collection('complaint');
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    complaintdata = querySnapshot.docs.map((doc) {
      return Complaintmodel(
          id: doc.id ,
          complaint: doc['complaint']?? '',
          userid:doc['id']?? '',
          reply:doc['reply']??'',
          );
      
    }).toList();
    
    print(complaintdata[0].complaint);
  } catch (e) {
    print(e);
  }
}

List<Complaintmodel> complaintdata = [];