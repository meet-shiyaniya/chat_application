import 'package:flutter/material.dart';

class chatScreen extends StatefulWidget {
  const chatScreen({super.key});

  @override
  State<chatScreen> createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        title: Text("Group Chat",style: TextStyle(color: Colors.white,fontFamily: "CherrySwash-Regular",fontSize: 40,fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromRGBO(67, 142, 150, 1),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width.toDouble(),
              color: Color.fromRGBO(67, 142, 150, 1),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Hi, <Username>",style: TextStyle(color: Colors.white,fontSize: 14),),
              ),
            ),

            SizedBox(height:25,),

            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Container(
                height: 59,
                width: 312,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Flash",style: TextStyle(color: Color.fromRGBO(67, 142, 150, 1),fontFamily: "Exo-Medium",fontWeight: FontWeight.bold,fontSize: 14),),
                        Spacer(),
                        Text("10:16am",style: TextStyle(fontSize: 12, color: Color.fromRGBO(102, 112, 133, 1),fontFamily: "Exo-Medium"),)
                      ],
                    ),
                    Container(
                      height: 39,
                      width: 312,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(221, 239, 240, 1),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              topRight: Radius.circular(16)
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,left: 15),
                        child: Text("@ironman help us out",style: TextStyle(fontFamily: "OpenSans-VariableFont_wdth,wght",fontSize: 14),),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10,left: 200),
              child: Container(
                height: 59,
                width: 176,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("You",style: TextStyle(color: Color.fromRGBO(67, 142, 150, 1),fontFamily: "Exo-Medium",fontWeight: FontWeight.bold,fontSize: 14),),
                        Spacer(),
                        Text("11:41am",style: TextStyle(fontSize: 12, color: Color.fromRGBO(102, 112, 133, 1),fontFamily: "Exo-Medium"),)
                      ],
                    ),
                    Container(
                      height: 39,
                      width: 176,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(221, 239, 240, 1),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              topLeft: Radius.circular(16)
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,left: 15),
                        child: Text("Awesome! Thanks.",style: TextStyle(fontFamily: "OpenSans-VariableFont_wdth,wght",fontSize: 14),),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, left: 14),
              child: Container(
                height: 78,
                width: 312,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Black Widow",style: TextStyle(color: Color.fromRGBO(67, 142, 150, 1),fontFamily: "Exo-Medium",fontWeight: FontWeight.bold,fontSize: 14),),
                        Spacer(),
                        Text("1:40am",style: TextStyle(fontSize: 12, color: Color.fromRGBO(102, 112, 133, 1),fontFamily: "Exo-Medium"),)
                      ],
                    ),
                    Container(
                      height: 58,
                      width: 312,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(221, 239, 240, 1),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              topRight: Radius.circular(16)
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,left: 15),
                        child: Text("Hey team.I've finished whit the \n requirements doc!",style: TextStyle(fontFamily: "OpenSans-VariableFont_wdth,wght",fontSize: 14),),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 200, top: 10),
              child: Container(
                height: 59,
                width: 176,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("You",style: TextStyle(color: Color.fromRGBO(67, 142, 150, 1),fontFamily: "Exo-Medium",fontWeight: FontWeight.bold,fontSize: 14),),
                        Spacer(),
                        Text("11:41am",style: TextStyle(fontSize: 12, color: Color.fromRGBO(102, 112, 133, 1),fontFamily: "Exo-Medium"),)
                      ],
                    ),
                    Container(
                      height: 39,
                      width: 176,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(221, 239, 240, 1),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              topLeft: Radius.circular(16)
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,left: 15),
                        child: Text("Awesome! Thanks.",style: TextStyle(fontFamily: "OpenSans-VariableFont_wdth,wght",fontSize: 14),),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 14, top: 10),
              child: Container(
                height: 97,
                width: 312,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Wonder Woman",style: TextStyle(color: Color.fromRGBO(67, 142, 150, 1),fontFamily: "Exo-Medium",fontWeight: FontWeight.bold,fontSize: 14),),
                        Spacer(),
                        Text("11:44am",style: TextStyle(fontSize: 12, color: Color.fromRGBO(102, 112, 133, 1),fontFamily: "Exo-Medium"),)
                      ],
                    ),
                    Container(
                      height: 77,
                      width: 312,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(221, 239, 240, 1),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              topRight: Radius.circular(16)
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,left: 15),
                        child: Text("Good timing -was just looking at this.Good\ntiming -was just looking at this.Good\ntiming -was just looking at this.",style: TextStyle(fontFamily: "OpenSans-VariableFont_wdth,wght",fontSize: 14),),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 200, top: 10),
              child: Container(
                height: 197,
                width: 176,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("You",style: TextStyle(color: Color.fromRGBO(67, 142, 150, 1),fontFamily: "Exo-Medium",fontWeight: FontWeight.bold,fontSize: 14),),
                        Spacer(),
                        Text("11:41am",style: TextStyle(fontSize: 12, color: Color.fromRGBO(102, 112, 133, 1),fontFamily: "Exo-Medium"),)
                      ],
                    ),
                    Container(
                      height: 176,
                      width: 176,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              bottomLeft: Radius.circular(16)
                          ),
                          image: DecorationImage(image: AssetImage("asset/image3.jpeg"), fit: BoxFit.cover),
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 5,),
            Divider(color: Color.fromRGBO(67, 142, 150, 1),),

            Container(
              height: 90,
              width: 390,
              child: Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      height: 44,
                      width: 320,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.image_outlined,color: Color.fromRGBO(67, 142, 150, 1),),
                              prefixIcon: Icon(Icons.emoji_emotions_outlined,color: Color.fromRGBO(67, 142, 150, 1),),
                              hintText: "Enter Message",
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(67, 142, 150, 1),
                                  fontFamily: "OpenSans-VariableFont_wdth,wght"),
                              filled: true,
                              fillColor: Color.fromRGBO(221, 239, 240,1),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(67, 142, 150, 1)
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(67, 142, 150, 1)
                                  )
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(67, 142, 150, 1)
                                  )
                              )
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10,),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.5),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(67, 142, 150, 1),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Icon(Icons.send,color: Colors.white,),
                    ),
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
