import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/admin/addjewellaray.dart';
import 'package:project/admin/adminviewcustomers.dart';
import 'package:project/admin/editjewellaryitems.dart';

import 'package:project/admin/home.dart';
import 'package:project/admin/page.dart';
import 'package:project/admin/reply.dart';
import 'package:project/admin/viewcomplaints.dart';
import 'package:project/admin/viewfeedback.dart';
import 'package:project/admin/viewjewellaryitems.dart';
import 'package:project/admin/vieworderes.dart';
import 'package:project/admin/viewpayment.dart';
import 'package:project/customer/Registration.dart';
import 'package:project/customer/complaints.dart';
import 'package:project/customer/custhome.dart';
import 'package:project/customer/customervieworder.dart';
import 'package:project/customer/editprofile.dart';
import 'package:project/customer/feedback.dart';
import 'package:project/customer/forgotpassword.dart';
import 'package:project/customer/homepage.dart';
import 'package:project/customer/jewellaryitems.dart';
import 'package:project/customer/login.dart';
import 'package:project/customer/mainhome.dart';
import 'package:project/customer/profileupdation.dart';
import 'package:project/customer/viewcomplaintsreply.dart';
import 'package:project/customer/viewpaymentdetails.dart';

import 'firebase_options.dart';


Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
          "custlogin":(context) => Customerlogin(),
          "custhome":(context) => Homepage(),
          "custregistration":(context) => Registration(),
          "adminaddjewellary":(context) => Jewellary(),
          // "custpayment":(context) =>Payment(),
          // "custmakepayment":(context) =>Makepayment(),
          "adminhome":(context) =>adminhome(),
          "adminviewpayment":(context) =>const PaymentDetails(),
          "adminviewcomplaints":(context) =>const Viewcomplaints(),
          "custeditprofile":(context)=>const editprofile(),
          "custforgotpassword":(context) =>const forgotpassword(),
          "custcomplaints":(context) => Complaints(),
          "jewwllaryitem":(context) => const Jewellaryitems(),
          "custviewpaymentdetails":(context) =>const Custviewpaymentdetails(),
          "adminvieworders":(context) =>const Adminvieworderes(),
          "custvieworder":(context) =>const Custvieworder(),
          "custviewcomplaintsreply":(context) =>const Custviewcomplaintsreply(),
          "custprofileupdation":(context) =>const Custprofileupdation(),
          "adminpage":(context) =>const page(),
          "adminreply":(context) =>Reply(),
          "adminviewaddedjewellaryitems":(context) =>const Viewjewellaryitems(),
          "editjewellaryitems":(context) => Editjewellaryitems(jewename: "",quantity: "",actualprice: "",rentprice: "",available: "",Category: "",),
          "customerfeedback":(context)=> Custfeedback(),
          "custhomee":(context)=>const Customerhome(),
          "adminviewcustomers":(context)=>const Viewcustomers(),
          "adminviewcustfeedback":(context)=>const Viewfeedback(),
          "mainhome":(context)=>const mainhome(),
          // "public":(context)=>Jewelryshoppage()
          // "custviewjewellarydetails":(context)=>Viewjewellarydetails(),
         
          
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const mainhome(), ) ;
  }
  
}




