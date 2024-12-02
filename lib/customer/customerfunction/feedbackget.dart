import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/customer/model/feedbackmodel.dart';

Future feedbackget() async {
  try {
    // String? email= FirebaseAuth.instance.currentUser!.email;
    var update = FirebaseFirestore.instance.collection('feedback');
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    feedbackdata = querySnapshot.docs.map((doc) {
      return Feedbackmodel(
          id: doc.id ,
          feedback: doc['feedback']?? '',
          custid:doc['id']?? '',
          );
      
    }).toList();
    
    print(feedbackdata[0].feedback);
    print(feedbackdata.length);
  } catch (e) {
    print(e);
  }
}

List<Feedbackmodel> feedbackdata = [];