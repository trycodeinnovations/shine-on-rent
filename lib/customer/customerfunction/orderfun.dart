import 'package:cloud_firestore/cloud_firestore.dart';

  

Future orderfun(data)async{
  
  print(data);

  
FirebaseFirestore firestore=FirebaseFirestore.instance;
  try {
    
  // print('successs');
 await firestore.collection('order').doc().set(data);
 print('fghjk');
    
 } catch (e) {
  print('Error during registration: $e');
 
}
}