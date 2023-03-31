
import 'package:dashboard/model/productModel.dart';
import 'package:dashboard/network/product_repo.dart';
import 'package:flutter/cupertino.dart';

class ProductControllar extends ChangeNotifier{

  List<ProductModel> productlist= [];

  ProductRepo productRepo=ProductRepo();

   void getProduct()async{
     var net=await productRepo.ProductRepository();

     if(net!=null){

       productlist.addAll(net);
       notifyListeners();


     }


   }
}