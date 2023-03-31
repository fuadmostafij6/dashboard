import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/product_controllar.dart';
class LatestOrderPage extends StatefulWidget {
  const LatestOrderPage({Key? key}) : super(key: key);

  @override
  State<LatestOrderPage> createState() => _LatestOrderPageState();
}

class _LatestOrderPageState extends State<LatestOrderPage> {



  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final  productcontroller = Provider.of<ProductController>(context,listen: false);

    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.width*0.54,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height*0.1,
                  width: size.width,
                  color: Color(0xfff4f4f7),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    text:"Lates ",style: TextStyle(fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)
                                ),
                                TextSpan(
                                    text:"Orders",style: TextStyle(fontSize: 24,color: Colors.black)
                                )
                              ]
                          )),
                    ),
                  ),

                ),

                productcontroller.productlist.isNotEmpty?
                SizedBox(
                  height: size.height*0.15,
                  child: ListView.builder(
                     itemCount: 5,
                      shrinkWrap: true,
                      primary: false,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context,index){
                      var data=productcontroller.productlist[index];
                        return Container(
                          height: size.height*0.1,
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.location_on_outlined,size: 22,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Order #${data.id}",style: TextStyle(fontSize: 13,color: Colors.black),),
                                  Text("${data.rating!.rate}",style: TextStyle(fontSize: 13,color: Color(0xff636363)),)
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/img_2.png"),height: 22,width: 22,),
                                      SizedBox(width: 10,),
                                      Text("${data.category}",style: TextStyle(fontSize: 14,color: Colors.black),)

                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/img_3.png"),height: 22,width: 22,),
                                      SizedBox(width: 10,),
                                      Text("\$${data.price}",style: TextStyle(fontSize: 10,color: Color(0xff636363)),)

                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image(image: AssetImage("assets/img_4.png"),height: 22,width: 22,color:Color(0xffECA100)),
                                  SizedBox(width: 10,),
                                  Text("Preparing",style: TextStyle(fontSize: 14,color: Color(0xffECA100)),)

                                ],
                              ),
                              Container(
                                height: 45,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(color: Color(0xff00796B))
                                ),
                                child: Center(child: Text("Mark as Prepared",style: TextStyle(fontSize: 14,color: Color(0xff00796B)),)),
                              )
                            ],
                          ),
                        );
                      }),
                ): SizedBox(),


              ],
            ),
          ),


          Container(
            width: size.width*0.32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xfff4f4f7),
              boxShadow:  [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset:
                  Offset(0, 3), // changes position of shadow
                ),
              ]
            ),
            child:Column(
              children: [
                Image(image: AssetImage("assets/img.png"),height: 150,
                  width: 170,fit:BoxFit.cover ,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 8,),
                      Image(

                        image: AssetImage("assets/img_1.png"),height: 24,width: 24,),
                      SizedBox(height: 5,),
                      Text("New Orders",style: TextStyle(color: Colors.black,fontSize: 15),),
                      SizedBox(height: 8,),

                    ],
                  ),
                )
              ],
            ),

          )
        ],
      ),
    );
  }
}
