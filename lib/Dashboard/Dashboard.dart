

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
            SizedBox(height: 10,),
            Container(
              height: size.height*0.6,

              child: Row(
                children: [
                  SizedBox(

                    width: size.width*0.63,
                    child: Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text(DateFormat('dd MMMM yyyy| hh:mm').format(DateTime.now()),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.notifications, color: Colors.red,),
                                Text("A new order is waiting to prepared".toUpperCase(),
                                style: TextStyle(
                                  color: Colors.red
                                ),
                                ),

                              ],
                            )
                          ],
                        ),


                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                              itemCount:7,
                              primary: false,
                              shrinkWrap: true,
                              itemBuilder: (context, index){
                                return InkWell(
                                  onTap: (){
                                    setState(() {
                                      //selected = index;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                                    child: Container(

                                      width: 180,
                                      decoration: BoxDecoration(
                                        color:index<4?Color(0xfff4f4f7): index>4?Color(0xffcad5dd):Color(0xfffdf1de) ,
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
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [

                                          Icon(Icons.dashboard, size: 35,color: Colors.black,),
                                          SizedBox(height: 5,),
                                          Text("Total order\n /Today", style: TextStyle(
                                            fontSize: 18,
                                            color:Colors.black,
                                          ),),
                                          SizedBox(height: 5,),
                                          Text("520", style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold
                                          ),)

                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 280,
                          width: size.width*0.63,
                          child:    Row(
                            children: [
                              Row(
                                children: [
                                  for(int index =0; index<3; index++)

                InkWell(
                onTap: (){
      setState(() {
      //selected = index;
      });
      },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: Container(

            width: size.width*0.12,

            decoration: BoxDecoration(
              color:index<4?Color(0xff94f5eb): index>4?Color(0xffcad5dd):Color(0xfffdf1de) ,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Icon(Icons.dashboard, size: 35,color: Colors.black,),
                SizedBox(height: 5,),
                Text("Total Reveniew\n /This month", style: TextStyle(
                  fontSize: 18,
                  color:Colors.black,
                ),),
                SizedBox(height: 10,),
                Text("520", style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("60% of 520 is monthly target", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal
                  ),),
                )

              ],
            ),
          ),
        ),
      )

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                                child: Container(

                                  width: size.width*0.23,

                                  decoration: BoxDecoration(
                                    color:Color(0xffdfe8c5) ,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Today \nSpecial \nMenu", style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold
                                      ),),

                                      Image.asset("assets/kholil.jpg",
                                      width: 150,
                                      height: 150,
                                      fit: BoxFit.cover,
                                      )
                                    ],
                                  )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Column(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: size.height*0.1,
                          width: size.width *0.24,
                          decoration: BoxDecoration(
                            color: Color(0xfff4f4f7),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Md Yeasin", style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),),
                                  Text("Manager & Admin", style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal
                                  ),),
                                ],
                              ),
                              SizedBox(width: 30,),
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
                          height: size.height*0.46,
                          width: size.width *0.24,
                          decoration: BoxDecoration(
                            color: Color(0xfff4f4f7),
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
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}