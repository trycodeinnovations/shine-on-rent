import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/admin/adminmodel/replymodel.dart';

Future compltget() async {
  try {
    // String? email= FirebaseAuth.instance.currentUser!.email;
    var update = FirebaseFirestore.instance.collection('complaint');
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    replydata = querySnapshot.docs.map((doc) {
      return Replymodel(
          id: doc.id ,
          reply: doc['reply']?? '',
          userid:doc['id']?? '',
          );
      
    }).toList();
    
    print(replydata[0].reply);
  } catch (e) {
    print(e);
  }
}

List<Replymodel> replydata = [];