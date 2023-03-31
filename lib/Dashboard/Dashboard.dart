import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    //print(DateFormat('yyyy-MM-dd hh:mm:ss').format(now));
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: size.height * 0.65,
              child: Row(
                children: [
                  SizedBox(
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
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 7,
                              primary: false,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      //selected = index;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 10),
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
                                            "520",
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
                                          setState(() {
                                            //selected = index;
                                          });
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 20, horizontal: 5),
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
                                                  "520",
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "60% of 520 is monthly target",
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
                                      vertical: 20, horizontal: 10),
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
                                            "assets/kholil.jpg",
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
                  ),
                  //side a je 2 ta Container Ace oi ta
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.24,
                          decoration: BoxDecoration(
                            color: Color(0xfff4f4f7),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Md Yeasin",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Manager & Admin",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              CircleAvatar(
                                radius: 35,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: size.height * 0.46,
                          width: size.width * 0.24,
                          decoration: BoxDecoration(
                            color: Color(0xfff4f4f7),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: size.height*0.2,
                        width: size.width*0.55,
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
                               child: RichText(
                                   text: TextSpan(
                                     children: [
                                       TextSpan(
                                         text:"Lates ",style: TextStyle(fontSize: 18,
                                           fontWeight: FontWeight.bold,
                                           color: Colors.black)
                                       ),
                                       TextSpan(
                                           text:"Orders",style: TextStyle(fontSize: 16,color: Colors.black)
                                       )
                                     ]
                                   )),
                             ),

                           ),
                           Container(
                             height: size.height*0.1,
                             width: size.width,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Colors.white
                             ),
                             child: Row(
                               children: [
                                 Icon(Icons.location_on_outlined,size: 22,),
                                 Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     Text("Order #1234",style: TextStyle(fontSize: 13,color: Colors.black),),
                                     Text("25 Jan, 12:34 PM",style: TextStyle(fontSize: 13,color: Color(0xff636363)),)
                                   ],
                                 ),
                                 Column(
                                   children: [
                                     Row(
                                       children: [
                                         Image(image: AssetImage("assets/img_2.png"),),


                                       ],
                                     )
                                   ],
                                 )


                               ],
                             ),
                           )

                         ],
                       ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: size.height,
                        width: size.width*0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xfff4f4f7)
                        ),
                        child:Column(
                          children: [
                            Image(image: AssetImage("assets/img.png"),height: 150,
                              width: 170,fit:BoxFit.cover ,),
                            Container(
                              height: 60,
                              width: 220,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(image: AssetImage("assets/img_1.png"),),
                                  Text("New Orders",style: TextStyle(color: Colors.black,fontSize: 12),)

                                ],
                              ),
                            )
                          ],
                        ),

                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
