import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
FirebaseAuth auth=FirebaseAuth.instance;
  FirebaseFirestore firestore=FirebaseFirestore.instance;

Future Custreg(data,email,pass)async{
  print('hello');
  print(data);

  

  try {
    print("hies");
    var user= await auth.createUserWithEmailAndPassword(email:email, password:pass );
  print('successs');
 await firestore.collection('customer').doc(email).set(data);
    
 } catch (e) {
  print('Error during registration: $e');
  // Display an error message to the user or handle the error in a specific way
}
}