import 'package:cloud_firestore/cloud_firestore.dart';

  

Future feedbackfun(data)async{
  
  print(data);

  
FirebaseFirestore firestore=FirebaseFirestore.instance;
  try {
    
  print('successs');
 await firestore.collection('feedback').add(data);
    
 } catch (e) {
  print('Error during registration: $e');
 
}
}