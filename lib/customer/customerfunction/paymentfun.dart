import 'package:cloud_firestore/cloud_firestore.dart';

  

Future paymentfun(data)async{
  
  print(data);

  
FirebaseFirestore firestore=FirebaseFirestore.instance;
  try {
    
  print('successs');
 await firestore.collection('payment').add(data);
    
 } catch (e) {
  print('Error during registration: $e');
 
}
}
