import 'package:cloud_firestore/cloud_firestore.dart';

  

Future complaintfun(data)async{
  
  print(data);

  
FirebaseFirestore firestore=FirebaseFirestore.instance;
  try {
    
  print('successs');
 await firestore.collection('complaint').add(data);
    
 } catch (e) {
  print('Error during registration: $e');
 
}
}

