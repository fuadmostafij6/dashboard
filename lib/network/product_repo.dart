import 'package:dashboard/model/productModel.dart';
import 'package:http/http.dart'as http;

 class ProductRepo{


   Future<List<ProductModel>?> ProductRepository()async{

     try{
       var responce =await http.get(Uri.parse("https://fakestoreapi.com/products"));

       if(responce.statusCode==200){
         print(responce.body);
         return productModelFromJson(responce.body);
       }

     }catch(e,s){
       print(e);
       print(s);

     }

   }
 }