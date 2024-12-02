import 'package:cloud_firestore/cloud_firestore.dart';

  

Future replyfun(id,data)async{
  
  print(data);

  
FirebaseFirestore firestore=FirebaseFirestore.instance;
  try {
    
  print('successs');
 await firestore.collection('complaint').doc(id).update(data);
    
 } catch (e) {
  print('Error during registration: $e');
 
}
}