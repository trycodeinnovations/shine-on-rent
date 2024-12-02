import 'package:cloud_firestore/cloud_firestore.dart';

  

Future editfun(data,id)async{
  
  print(id);

  
FirebaseFirestore firestore=FirebaseFirestore.instance;
  try {
    
  print('successs');
 await firestore.collection('jewellaryitems').doc(id).update(data);
    
 } catch (e) {
  print('Error during registration: $e');
 
}
}