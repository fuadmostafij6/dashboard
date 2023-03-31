


import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../controller/product_controllar.dart';

Widget topLeft(Size size, BuildContext context){
  final  productController = Provider.of<ProductController>(context,listen: false);
  return  SizedBox(
    width: size.width * 0.63,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              DateFormat('dd MMMM yyyy| hh:mm')
                  .format(DateTime.now()),
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.red,
                ),
                Text(
                  "A new order is waiting to prepared"
                      .toUpperCase(),
                  style: TextStyle(color: Colors.red),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 10,),
        SizedBox(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var data =productController.productlist[index];
                return InkWell(
                  onTap: () {

                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10),
                    child: Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: index < 4
                            ? Color(0xfff4f4f7)
                            : index > 4
                            ? Color(0xffcad5dd)
                            : Color(0xfffdf1de),
                        borderRadius: BorderRadius.circular(10),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.withOpacity(0.5),
                        //     spreadRadius: 5,
                        //     blurRadius: 7,
                        //     offset: Offset(0, 3), // changes position of shadow
                        //   ),
                        // ],
                      ),
                      height: 200,
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dashboard,
                            size: 35,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Total order\n /Today",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${data.price}",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
        Expanded(
          child: SizedBox(
            height: 280,
            width: size.width * 0.63,
            child: Row(
              children: [
                Row(
                  children: [
                    for (int index = 0; index < 3; index++)
                      InkWell(
                        onTap: () {

                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5),
                          child: Container(
                            width: size.width * 0.12,
                            decoration: BoxDecoration(
                              color: index < 4
                                  ? Color(0xff94f5eb)
                                  : index > 4
                                  ? Color(0xffcad5dd)
                                  : Color(0xfffdf1de),
                              borderRadius:
                              BorderRadius.circular(10),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.withOpacity(0.5),
                              //     spreadRadius: 5,
                              //     blurRadius: 7,
                              //     offset: Offset(0, 3), // changes position of shadow
                              //   ),
                              // ],
                            ),
                            height: 270,
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.dashboard,
                                  size: 35,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Total Reveniew\n /This month",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${productController.productlist[index].price}",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight:
                                      FontWeight.bold),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.all(8.0),
                                  child: Text(
                                    "60% of ${productController.productlist[index].price} is monthly target",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight:
                                        FontWeight.normal),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10),
                  child: Container(
                      width: size.width * 0.22,
                      decoration: BoxDecoration(
                        color: Color(0xffdfe8c5),
                        borderRadius: BorderRadius.circular(10),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.withOpacity(0.5),
                        //     spreadRadius: 5,
                        //     blurRadius: 7,
                        //     offset: Offset(0, 3), // changes position of shadow
                        //   ),
                        // ],
                      ),
                      height: 280,
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Text(
                            "Today \nSpecial \nMenu",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "assets/img_5.png",
                            width: 130,
                            height: 130,
                            fit: BoxFit.cover,
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}