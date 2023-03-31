

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Dashboard/Dashboard.dart';
import '../controller/product_controllar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List list = ["Dashboard", "Inventory", "New order", "Customers", "Review", "Promote"];
  var selected=0;
  bool loader = true;
  Future loding()async{
    final  productcontroller = Provider.of<ProductController>(context,listen: false);
    productcontroller.getProduct();
  }
  @override
  void initState() {
    loding().then((value) {
      setState(() {
        loader=false;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Row(
        children: [
          SizedBox(
            width: size.width*0.12,
            height: size.height,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: 25,),

             Padding(padding: EdgeInsets.all(10),
 child: Image.asset("assets/img_6.png", fit: BoxFit.cover,height: 130, width: size.width,)),

              Expanded(
                child: ListView.builder(
                    itemCount:list.length,
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                     setState(() {
                       selected = index;
                     });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: Container(


                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:selected == index?Colors.green:Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        height: 130,
                        child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Icon(Icons.dashboard, size: 35,color: selected == index?Colors.white:null,),
                            SizedBox(height: 20,),
                            Text(list[index], style: TextStyle(
                              fontSize: 20,
                              color:      selected == index?Colors.white:null,
                            ),),

                          ],
                        ),
                      ),
                    ),
                  );
                }),
              )
              ],
            ),
          ),

          loader? const Expanded(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ):
          SizedBox(
            width: size.width*0.88,
            height: size.height,
            child: const DashboardPage(),
          )
        ],
      ),
    );
  }
}
