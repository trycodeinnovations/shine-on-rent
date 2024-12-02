
class Adminviewjewemodel{
  
    final String id;
   final String jewename;
  final String image;
   final String quantity;
    final String actualprice;
     final String rentprice;
      final String available;
  final String category;


  Adminviewjewemodel({required this.id,required this.jewename,required this.image,required this.rentprice,required this.actualprice,required this.available,required this.quantity,required this.category});

  toJson() {}
}