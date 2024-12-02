
class Jewellarymodel{
  
    final String id;
  final String actualprice;
  final String cautiondeposit;
  final String available;
  final String jewename;
  final String quantity;
  final String rentprice;
  final String image;
  final String category;
 
   

  Jewellarymodel({required this.id, required this.actualprice,
  required this.cautiondeposit,required this.jewename,required this.quantity,
  required this.rentprice,required this.image,required this.category,required this.available,
  });

  get isBestSeller => null;

  toJson() {}
}