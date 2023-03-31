




import 'package:flutter/material.dart';

Widget topRight(Size size){
  return Column(
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
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,),
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
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "4.4",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xff33C918),
                      size: 28,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Based on 560 ratings",
                  style: TextStyle(
                      fontSize: 12, color: Color(0xff727272)),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xff33C918),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xff33C918),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xff33C918),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xff33C918),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xff33C918),
                          size: 33,
                        ),
                      ],
                    ),
                    Text(
                      "480",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xff33C918),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xff33C918),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xff33C918),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xff33C918),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color:  Color(0xfff4f4f7),
                          size: 33,
                        ),
                      ],
                    ),
                    Text(
                      "480",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xff33C918),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xff33C918),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xff33C918),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xfff4f4f7),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xfff4f4f7),
                          size: 33,
                        ),
                      ],
                    ),
                    Text(
                      "480",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),

                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xff33C918),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xff33C918),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xfff4f4f7),
                          size: 40,
                        ),
                        Icon(
                          Icons.star,
                          color:  Color(0xfff4f4f7),
                          size: 40,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xfff4f4f7),
                          size: 40,
                        ),
                      ],
                    ),
                    Text(
                      "480",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xff33C918),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color:  Color(0xfff4f4f7),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color:  Color(0xfff4f4f7),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color:  Color(0xfff4f4f7),
                          size: 33,
                        ),
                        Icon(
                          Icons.star,
                          color:  Color(0xfff4f4f7),
                          size: 33,
                        ),
                      ],
                    ),
                    Text(
                      "480",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Rating since from system launch",
                  style: TextStyle(
                      fontSize: 12, color: Color(0xff727272)),
                ),
              ],
            ),
          ),
        ),
      )
    ],
  );
}